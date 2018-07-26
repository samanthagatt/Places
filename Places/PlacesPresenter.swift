//
//  PlacesPresenter.swift
//  Places
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

// Protocol for types that usa PlaceController
protocol PlacesPresenter: class {
    var placeController: PlaceController? { get set}
}
