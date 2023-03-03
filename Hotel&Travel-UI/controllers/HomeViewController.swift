//
//  ViewController.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import UIKit

enum homeSection: Int {
    case header
    case search
    case topHotel
    case headerHotelNearby
    case hotelNearby
    
    init(_ section: Int) {
        switch section {
        case 0:
            self = .header
        case 1:
            self = .search
        case 2:
            self = .topHotel
        case 3:
            self = .headerHotelNearby
        case 4:
            self = .hotelNearby
        default:
            self = .header
        }
    }
}

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeTableView: UITableView!
    let data = HotelProvider.all()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "ㅤㅤㅤㅤㅤ Home"
        setupHomeTableView()
    }
    
    func setupHomeTableView(){
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: HeaderTableViewCell.identifier)
        homeTableView.register(UINib(nibName: "SearchTableViewCell", bundle: nil), forCellReuseIdentifier: SearchTableViewCell.identifier)
        homeTableView.register(UINib(nibName: "TopHotelColTableViewCell", bundle: nil), forCellReuseIdentifier: TopHotelColTableViewCell.identifier)
        homeTableView.register(UINib(nibName: "HotelNearbyHeaderTableViewCell", bundle: nil), forCellReuseIdentifier: HotelNearbyHeaderTableViewCell.identifier)
        homeTableView.register(UINib(nibName: "HotelNearbyTableViewCell", bundle: nil), forCellReuseIdentifier: HotelNearbyTableViewCell.identifier)
        homeTableView.separatorStyle = .none
        
        
    }
}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 4 {
            return 3
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch homeSection(indexPath.section) {
        case .header:
            guard let cell = homeTableView.dequeueReusableCell(withIdentifier: HeaderTableViewCell.identifier, for: indexPath) as? HeaderTableViewCell else { return UITableViewCell() }
            
            return cell
        case .search:
            guard let cell = homeTableView.dequeueReusableCell(withIdentifier: SearchTableViewCell.identifier, for: indexPath) as? SearchTableViewCell else { return UITableViewCell() }
            cell.setupSearch()
            return cell
        case .topHotel:
            guard let cell = homeTableView.dequeueReusableCell(withIdentifier: TopHotelColTableViewCell.identifier, for: indexPath) as? TopHotelColTableViewCell else { return UITableViewCell() }
            return cell
        case .headerHotelNearby:
            guard let cell = homeTableView.dequeueReusableCell(withIdentifier: HotelNearbyHeaderTableViewCell.identifier, for: indexPath) as? HotelNearbyHeaderTableViewCell else {return UITableViewCell()}
            cell.showAll.addTarget(self, action: #selector(navigateToHotelNearby(_:)), for: .touchUpInside)
            return cell
        case .hotelNearby:
            guard let cell = homeTableView.dequeueReusableCell(withIdentifier: HotelNearbyTableViewCell.identifier, for: indexPath) as? HotelNearbyTableViewCell else { return UITableViewCell() }
            cell.setData(hotel: data[indexPath.row])
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch homeSection(indexPath.section){
        case .header:
            return UITableView.automaticDimension
        case .search:
            return UITableView.automaticDimension
        case .topHotel:
            return 180
        case .headerHotelNearby:
            return UITableView.automaticDimension
        case .hotelNearby:
            return 150
        }
    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section == 3{
//            return "Hotels Nearby"
//        } else {
//            return nil
//        }
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if homeSection(indexPath.section) == .hotelNearby{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "detailHotel") as! DetailHotelViewController
            viewController.detailHotel = data[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else {return}
        header.textLabel?.textColor = .black
        header.textLabel?.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        header.textLabel?.frame = header.bounds
    }
    
    @objc func navigateToHotelNearby(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "hotelNearby") as! HotelNearbyViewController
//        present(viewController, animated: true)
        navigationController?.pushViewController(viewController, animated: true)
    }
}

