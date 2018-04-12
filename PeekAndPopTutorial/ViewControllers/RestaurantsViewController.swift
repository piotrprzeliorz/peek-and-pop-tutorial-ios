//
//  ViewController.swift
//  PeekAndPopTutorial
//
//  Created by Piotr Przeliorz on 18.03.2017.
//  Copyright © 2017 Piotr Przeliorz. All rights reserved.
//

import UIKit

final class RestaurantsViewController: UIViewController {
    
    //MARK:- IBOutlets
    
    @IBOutlet private weak var restaurantTableView: UITableView!
    
    //MARK:- Data source
    
    private lazy var restaurants: [Restaurant] = {
        return [
            Restaurant(name: "Marina", photo: #imageLiteral(resourceName: "marina_restaurant"), description: Decriptions.Marina.rawValue, address: Addresses.Marina.rawValue),
            Restaurant(name: "Monopol", photo:  #imageLiteral(resourceName: "monopol_restaurant"), description: Decriptions.Monopol.rawValue, address: Addresses.Monopol.rawValue),
            Restaurant(name: "Campo", photo:#imageLiteral(resourceName: "campo_restaurant"), description: Decriptions.Campo.rawValue, address: Addresses.Campo.rawValue),
            ]
    }()
    
    //MARK:- VC's life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = Titles.restaturantsViewController.rawValue
        setUpRestaurantsTableView()
        checkForceTouchCapability()
    }
    
    //MARK:- Main
    
    private func setUpRestaurantsTableView() {
        restaurantTableView.delegate = self
        restaurantTableView.dataSource = self
    }
    
    private func checkForceTouchCapability() {
        guard traitCollection.forceTouchCapability == .available else { return }
        registerForPreviewing(with: self, sourceView: view)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = sender as? IndexPath else { return }
        guard let destinationViewController  = segue.destination as? RestaurantDetailsViewController else { return }
        destinationViewController.restaurant = restaurants[indexPath.row]
    }
}

//MARK:- UITableViewDelegate, UITableViewDataSource
extension RestaurantsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = restaurantTableView.dequeueReusableCell(withIdentifier: RestaurantCell.identifier) as! RestaurantCell
        cell.configureCellView(withRestaurant: restaurants[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: SegueIdentifier.toDetail.rawValue, sender: indexPath)
    }
}

//MARK:- UIViewControllerPreviewingDelegate
extension RestaurantsViewController: UIViewControllerPreviewingDelegate {
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        guard let point = restaurantTableView?.convert(location, from: self.view) else { return nil }
        guard let indexPath = restaurantTableView?.indexPathForRow(at: point) else { return nil }
        guard let cell = restaurantTableView?.cellForRow(at: indexPath) else { return nil }
        guard let restuarantDetailsViewController = storyboard?.instantiateViewController(withIdentifier: RestaurantDetailsViewController.identifier) as? RestaurantDetailsViewController else { return nil }
        let restaurant = restaurants[indexPath.row]
        restuarantDetailsViewController.restaurant = restaurant
        restuarantDetailsViewController.preferredContentSize = CGSize.zero
        let frame = restaurantTableView.convert(cell.frame, to: self.view)
        previewingContext.sourceRect = frame
        return restuarantDetailsViewController
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        show(viewControllerToCommit, sender: self)
    }
}

