//
//  HeaderTableViewCell.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    
    static let identifier = "HeaderTableViewCell"

    @IBOutlet weak var headerLabel : UILabel!
    @IBOutlet weak var subHeaderLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
