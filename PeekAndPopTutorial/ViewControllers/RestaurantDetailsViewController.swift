//
//  RestaurantDetailViewController.swift
//  PeekAndPopTutorial
//
//  Created by Piotr Przeliorz on 18.03.2017.
//  Copyright © 2017 Piotr Przeliorz. All rights reserved.
//

import UIKit

final class RestaurantDetailsViewController: UIViewController {
    lazy var previewActions:[UIPreviewActionItem] = {
        func previewActionWithTitle(title:String, style:UIPreviewActionStyle = .default) -> UIPreviewAction {
            return UIPreviewAction(title: title, style: style) { (previewAction, viewController) -> Void in
                print("\(previewAction.title)")
            }
        }
        
        let a = previewActionWithTitle(title: "a")
        let b = previewActionWithTitle(title: "b", style: .destructive)
        let c = previewActionWithTitle(title: "c", style: .selected)
        let d_e_f = UIPreviewActionGroup(title: "d&e&f ...",
                                         style: .default,
                                         actions: [previewActionWithTitle(title: "d"),
                                                   previewActionWithTitle(title: "e"),
                                                   previewActionWithTitle(title: "f")])
        
        return [a,b,c,d_e_f]
    }()
    
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
    
    override var previewActionItems: [UIPreviewActionItem] {
        return previewActions
    }
}
