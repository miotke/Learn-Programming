//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Andrew Miotke on 11/25/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import Foundation

class SelfDrivingCar: Car {
    
    var destination: String?
    var numberOfPassengers: Int?
    
    override func drive() {
        super.drive()
        
        // Optional binding example
        if let userSetDestination = destination {
            print("Car is driving towards \(userSetDestination)")
            print(20 - 10)
        }
        
        if let userSetNumberOfPassengers = numberOfPassengers {
            print("There are \(userSetNumberOfPassengers) passengers")
        }
    }
}
