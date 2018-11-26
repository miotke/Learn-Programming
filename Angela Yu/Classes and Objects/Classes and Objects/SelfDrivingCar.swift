//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Andrew Miotke on 11/25/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import Foundation

class SelfDrivingCar: Car {
    
    var destination = "1 Infinite Loop"
    
    override func drive() {
        super.drive()
        print("Car is driving towards \(destination)")
    }
}


