//
//  DetailHotelTableViewCell.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

class DetailHotelTableViewCell: UITableViewCell {
    
    static let identifier = "DetailHotelTableViewCell"
    @IBOutlet weak var detailImage : UIImageView!{
        didSet{
            detailImage.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var hotelNameLabel : UILabel!
    @IBOutlet weak var descLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(detailHotel: HotelStruct){
        detailImage.image = UIImage(named: detailHotel.image)
        hotelNameLabel.text = "\(detailHotel.rating) / 5"
        descLabel.text = detailHotel.desc
    }
}
