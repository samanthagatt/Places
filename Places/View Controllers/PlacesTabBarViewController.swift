//
//  PlacesTabBarViewController.swift
//  Places
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class PlacesTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Loop through an array of UIViewControllers
        for childVC in childViewControllers {
            
            if let vc = childVC as? PlacesPresenter {
                vc.placeController = placeController
            }
        }
    }

    let placeController = PlaceController()

}
