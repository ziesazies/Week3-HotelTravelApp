//
//  TopHotelColTableViewCell.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

class TopHotelColTableViewCell: UITableViewCell {

    static let identifier = "TopHotelColTableViewCell"
    @IBOutlet weak var topHotelCollectionView: UICollectionView!
    let data = HotelProvider.all()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupTopHotelCollectionView()
    }

    func setupTopHotelCollectionView(){
        topHotelCollectionView.delegate = self
        topHotelCollectionView.dataSource = self
        topHotelCollectionView.register(UINib(nibName: "TopHotelCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: TopHotelCollectionViewCell.identifier)
//        topHotelCollectionView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}

extension TopHotelColTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = topHotelCollectionView.dequeueReusableCell(withReuseIdentifier: TopHotelCollectionViewCell.identifier, for: indexPath) as? TopHotelCollectionViewCell else { return UICollectionViewCell() }
        cell.setData(hotel: data[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width / 2, height: frame.size.height / 1.2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 30, bottom: 8, right: 8)
    }
}
