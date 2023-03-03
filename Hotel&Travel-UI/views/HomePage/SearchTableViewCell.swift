//
//  SearchTableViewCell.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    
    static let identifier = "SearchTableViewCell"

    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var searchBar: UISearchBar!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupSearch() {
        filterButton.layer.cornerRadius = 12
        filterButton.layer.masksToBounds = true
        
        searchBar.searchTextField.layer.masksToBounds = true
        searchBar.searchTextField.layer.cornerRadius = 19
        searchBar.backgroundColor = UIColor.white

    }
    
}
