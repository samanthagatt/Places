//
//  PlacesTableViewController.swift
//  Places
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

// Used to communicate that a row was selected in the table view
protocol PlacesTableViewControllerDelegate: class {
    func placeWasSelected(place: Place)
}

class PlacesTableViewController: UITableViewController, PlacesPresenter {

    // Refresh displayed data before we appear or re appear on screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let place = placeController?.places[indexPath.row] else { return }
        
        delegate?.placeWasSelected(place: place)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // nil coalescing -- if this is not nil use the value if it is use 0
        return placeController?.places.count ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)
        
        let place = placeController?.places[indexPath.row]
        cell.textLabel?.text = place?.name
        
        return cell
    }
    
    // MARK: - Properties
    
    weak var delegate : PlacesTableViewControllerDelegate?
    
    var placeController: PlaceController?
}


