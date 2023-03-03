//
//  RoomDetailTableViewCell.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

class RoomDetailTableViewCell: UITableViewCell {
    
    static let identifier = "roomDetailCell"
    var room: [RoomStruct] = []
    
    @IBOutlet weak var roomDetailCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCollectionRoomDetail()
    }
    
    func setupCollectionRoomDetail() {
        roomDetailCollectionView.delegate = self
        roomDetailCollectionView.dataSource = self
        roomDetailCollectionView.register(UINib(nibName: "RoomCell", bundle: nil), forCellWithReuseIdentifier: RoomCell.identifier)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension RoomDetailTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return room.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = roomDetailCollectionView.dequeueReusableCell(withReuseIdentifier: RoomCell.identifier, for: indexPath) as? RoomCell else {return UICollectionViewCell()}
        let selectedRoom = room[indexPath.row]
        cell.setData(room: selectedRoom)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 1.5, height: collectionView.frame.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 10)
    }
    
}
