//
//  Car.swift
//  Classes and Objects
//
//  Created by Andrew Miotke on 11/11/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
    case Truck
}

class Car {
    
    var color = "Black"
    var numberOfSeats = 5
    var typeOfCar: CarType = .Coupe
    
    init() {

    }
    
    convenience init(customerChosenColor: String, customerChosenNumberOfSeats: Int, customerChosenCarType: CarType) {
        self.init()
        color = customerChosenColor
        numberOfSeats = customerChosenNumberOfSeats
        typeOfCar = customerChosenCarType
    }
    
    
    func drive() {
        print("Car is moving")
    }
}
