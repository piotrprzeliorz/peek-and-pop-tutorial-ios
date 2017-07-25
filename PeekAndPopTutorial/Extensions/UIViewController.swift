//
//  UIViewController.swift
//  PeekAndPopTutorial
//
//  Created by Piotr Przeliorz on 25.07.2017.
//  Copyright © 2017 Piotr Przeliorz. All rights reserved.
//

import UIKit

extension UIViewController {
    static var identifier: String {
        return String(describing: self)
    }
}
