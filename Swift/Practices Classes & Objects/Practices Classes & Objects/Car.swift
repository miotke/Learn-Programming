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

enum Transmission {
    case manual
    case automatic
}

class Car {
    var color = "Blue"
    var numberOfSeats = 4
    var drivetrain = Drivetrain.allWheelDrive
    var fuelType = FuelType.gas
    var transmission = Transmission.automatic
    
    convenience init(customerColor: String, customerNumberOfSeats: Int, customerDrivetrain: Drivetrain, customerFuelType: FuelType, customerTransmission: Transmission) {
        self.init()
        color = customerColor
        numberOfSeats = customerNumberOfSeats
        drivetrain = customerDrivetrain
        fuelType = customerFuelType
        transmission = customerTransmission
    }
}
