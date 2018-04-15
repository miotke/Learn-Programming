//
//  Person.swift
//  Project10
//
//  Created by Andrew Miotke on 9/27/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }

}
