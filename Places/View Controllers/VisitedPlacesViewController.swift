//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlacesTableViewControllerDelegate {

    // ONLY needs to coordinate between
    
    
    // MARK: - PlacesTableViewControllerDelegate
    
    func placeWasSelected(place: Place) {
        mapViewController.location = place.location
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let tableVC = segue.destination as? PlacesTableViewController {
            placeTableViewController = tableVC
            placeTableViewController.placeController = placeController
            placeTableViewController.delegate = self
        }
        
        if let mapVC = segue.destination as? MapViewController {
            mapViewController = mapVC
        }
    }
    
    
    // MARK: - Properties
    
    var placeController: PlaceController?
    
    var mapViewController: MapViewController!
    var placeTableViewController: PlacesTableViewController!
}
