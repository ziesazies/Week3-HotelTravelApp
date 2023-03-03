//
//  RoomCell.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

class RoomCell: UICollectionViewCell {
    
    static let identifier = "roomCell"
    @IBOutlet weak var roomView: UIView!{
        didSet{
            roomView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var roomImage: UIImageView!{
        didSet{
            roomImage.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var roomNameLabel: UILabel!
    @IBOutlet weak var roomTypeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setData(room : RoomStruct){
        roomNameLabel.text = room.name
        roomTypeLabel.text = room.type
        roomImage.image = UIImage(named: room.image)
    }

}
