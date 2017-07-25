//
//  Restaurant.swift
//  PeekAndPopTutorial
//
//  Created by Piotr Przeliorz on 18.03.2017.
//  Copyright © 2017 Piotr Przeliorz. All rights reserved.
//

import UIKit

struct Restaurant {

    var name: String
    var photo: UIImage
    var description: String
    var address: String
    
    init(createRestaurantWithData name: String, photo: UIImage, description: String, address: String) {
        self.name = name
        self.photo = photo
        self.description = description
        self.address = address
    }
}
