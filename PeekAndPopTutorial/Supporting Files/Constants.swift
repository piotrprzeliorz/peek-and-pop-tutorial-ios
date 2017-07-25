//
//  Constants.swift
//  PeekAndPopTutorial
//
//  Created by Piotr Przeliorz on 29.05.2017.
//  Copyright © 2017 Piotr Przeliorz. All rights reserved.
//

import Foundation

enum SegueIdentifier: String {
    case toDetail = "toDetailView"
}

enum Titles: String {
    case restaturantsViewController = "Wrocław restaurants"
}

enum Decriptions: String {
    case Marina = "Marina restaurant is located in the city center, between two historical bridges. Being in Marina you’ll definitely remember gorgeous view on aged Old University building and atmosphere that gives you river water."
    case Campo = "In CAMPO, we cook with our hearts – just as we cook for our families and friends. What counts for us in the kitchen and on the plate, is simplicity and sincerity."
    case Monopol = "Restaurant Monopoly offers Polish cuisine in an innovative approach and unusual arrangements. Changing with the seasons served a la carte, refers to old, tried and tested recipes, giving them both traditional and contemporary character."
}

enum Addresses : String {
    case Marina = "Księcia Witolda 2, Wrocław"
    case Campo = "Podwale 83, Wrocław"
    case Monopol = "Heleny Modrzejewskiej 2, Wrocław"    
}
