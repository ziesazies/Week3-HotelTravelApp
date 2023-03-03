//
//  DetailHotelViewController.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

class DetailHotelViewController: UIViewController {

    @IBOutlet weak var detailHotelTableView: UITableView!
    var detailHotel: HotelStruct?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDetailHotelTable()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = detailHotel?.name
    }
    
    func setupDetailHotelTable () {
        detailHotelTableView.delegate = self
        detailHotelTableView.dataSource = self
        detailHotelTableView.register(UINib(nibName: "DetailHotelTableViewCell", bundle: nil), forCellReuseIdentifier: DetailHotelTableViewCell.identifier)
        detailHotelTableView.register(UINib(nibName: "RoomDetailTableViewCell", bundle: nil), forCellReuseIdentifier: RoomDetailTableViewCell.identifier)
        detailHotelTableView.separatorStyle = .none
    }
}

extension DetailHotelViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.section {
        case 0:
            guard let cell = detailHotelTableView.dequeueReusableCell(withIdentifier: DetailHotelTableViewCell.identifier, for: indexPath) as? DetailHotelTableViewCell else {return UITableViewCell()}
            
            if let detail = detailHotel{
                cell.setData(detailHotel: detail)
            }
            
            return cell
            
        case 1:
            guard let cell = detailHotelTableView.dequeueReusableCell(withIdentifier: RoomDetailTableViewCell.identifier, for: indexPath) as? RoomDetailTableViewCell else {return UITableViewCell()}
            if let detail = detailHotel {
                cell.room = detail.room
            }
            return cell
        default:
            break
        }
        
        return UITableViewCell()

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return UITableView.automaticDimension
        case 1:
            return 200
        default:
            return 0
        }
    }
}
