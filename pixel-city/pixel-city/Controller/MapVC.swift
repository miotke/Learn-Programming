//
//  ViewController.swift
//  pixel-city
//
//  Created by Andrew on 5/26/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var mapView: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
    }

    // Actions
    @IBAction func centerMapButtonWasPressed(_ sender: Any) {
    }
    
}

extension MapVC: MKMapViewDelegate {
    
}
