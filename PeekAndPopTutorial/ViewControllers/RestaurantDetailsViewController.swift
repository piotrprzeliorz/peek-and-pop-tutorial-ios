//
//  RestaurantDetailViewController.swift
//  PeekAndPopTutorial
//
//  Created by Piotr Przeliorz on 18.03.2017.
//  Copyright © 2017 Piotr Przeliorz. All rights reserved.
//

import UIKit

final class RestaurantDetailsViewController: UIViewController {
    
    //MARK:- IBOutlets

    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var restaurantImageView: RestaurantImageView!
    @IBOutlet weak var restaurantAddressTextView: UITextView!
    @IBOutlet weak var restaurantDescriptionLabel: UILabel!
    
    //MARK:- Variables
    
    var restaurant: Restaurant?
    
    //MARK:- Lifecycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK:- Main
    
    private func setupView() {
        restaurantNameLabel.text = self.restaurant?.name
        restaurantImageView.image = self.restaurant?.photo
        restaurantAddressTextView.text = self.restaurant?.address
        restaurantDescriptionLabel.text = self.restaurant?.description
    }
}
