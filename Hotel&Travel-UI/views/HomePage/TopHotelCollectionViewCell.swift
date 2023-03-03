//
//  TopHotelCollectionViewCell.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

class TopHotelCollectionViewCell: UICollectionViewCell {

    static let identifier = "TopHotelCollectionViewCell"
    @IBOutlet weak var topHotelImage: UIImageView!{
        didSet{
            topHotelImage.layer.cornerRadius = 10
            topHotelImage.clipsToBounds = true
        }
    }
    @IBOutlet weak var topHotelName: UILabel!
    @IBOutlet weak var topHotelPrice: UILabel!
    @IBOutlet weak var topHotelRating: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(hotel: HotelStruct){
        topHotelName.text = hotel.name
        topHotelPrice.text = "$\(hotel.price)"
        topHotelRating.text = "⭐ \(hotel.rating)"
        topHotelImage.image = UIImage(named: hotel.image)
    }
}
