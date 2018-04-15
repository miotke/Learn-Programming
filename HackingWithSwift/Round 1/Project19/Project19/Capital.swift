//
//  Capital.swift
//  Project19
//
//  Created by Andrew Miotke on 10/11/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import UIKit
import MapKit

class Capital: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
