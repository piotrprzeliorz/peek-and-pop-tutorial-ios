//
//  RestaurantImageView.swift
//  PeekAndPopTutorial
//
//  Created by Piotr Przeliorz on 20.03.2017.
//  Copyright © 2017 Piotr Przeliorz. All rights reserved.
//

import UIKit

final class RestaurantImageView: UIImageView {

    override func awakeFromNib() {
        layer.cornerRadius = 10
        clipsToBounds = true
    }
}
