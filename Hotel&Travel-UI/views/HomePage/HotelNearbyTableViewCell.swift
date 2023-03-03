//
//  HotelNearbyTableViewCell.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

class HotelNearbyTableViewCell: UITableViewCell {
    
    static let identifier = "HotelNearbyCell"

    @IBOutlet weak var hotelLabel: UILabel!
    @IBOutlet weak var hotelLocationLabel: UILabel!
    @IBOutlet weak var hotelImage: UIImageView!{
        didSet{
            hotelImage.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var priceHotelLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(hotel: HotelStruct){
        hotelLabel.text = hotel.name
        hotelLocationLabel.text = hotel.address
        hotelImage.image = UIImage(named: hotel.image)
        priceHotelLabel.text = "$\(hotel.price)"
        ratingLabel.text = "⭐ \(hotel.rating)"
    }
}
