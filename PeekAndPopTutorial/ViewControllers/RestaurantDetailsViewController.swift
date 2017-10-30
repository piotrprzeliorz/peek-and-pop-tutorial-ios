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

    @IBOutlet private weak var restaurantNameLabel: UILabel!
    @IBOutlet private weak var restaurantImageView: RestaurantImageView!
    @IBOutlet private weak var restaurantAddressTextView: UITextView!
    @IBOutlet private weak var restaurantDescriptionLabel: UILabel!
    
    //MARK:- Variables
    
    var restaurant: Restaurant?
    
    //MARK:- Lifecycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK:- Main
    
    private func setupView() {
        restaurantNameLabel.text = restaurant?.name
        restaurantImageView.image = restaurant?.photo
        restaurantAddressTextView.text = restaurant?.address
        restaurantDescriptionLabel.text = restaurant?.description
    }
}
