//
//  HotelNearbyViewController.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

class HotelNearbyViewController: UIViewController {

    @IBOutlet weak var hotelNearbyTableView: UITableView!
    let data = HotelProvider.all()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHotelNearbyTableView()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "ㅤㅤㅤㅤㅤ Hotels Nearby"

    }

    func setupHotelNearbyTableView(){
        hotelNearbyTableView.delegate = self
        hotelNearbyTableView.dataSource = self
        hotelNearbyTableView.register(UINib(nibName: "HotelNearbyTableViewCell", bundle: nil), forCellReuseIdentifier: HotelNearbyTableViewCell.identifier)
    }
}

extension HotelNearbyViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = hotelNearbyTableView.dequeueReusableCell(withIdentifier: HotelNearbyTableViewCell.identifier, for: indexPath) as? HotelNearbyTableViewCell else { return UITableViewCell() }
        cell.setData(hotel: data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "detailHotel") as! DetailHotelViewController
        viewController.detailHotel = data[indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
