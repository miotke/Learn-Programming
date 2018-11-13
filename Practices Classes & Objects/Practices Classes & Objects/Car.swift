//
//  Car.swift
//  Practices Classes & Objects
//
//  Created by Andrew Miotke on 11/12/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import Foundation

enum Drivetrain {
    case allWheelDrive
    case frontWheelDrive
    case rearWheelDrive
}

enum FuelType {
    case gas
    case diesel
}

class Car {
    var color = "Black"
    var numberOfSeats = 4
    var drivetrain = Drivetrain.allWheelDrive
    var fuelType = FuelType.gas
}
