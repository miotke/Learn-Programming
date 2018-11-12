//
//  main.swift
//  Classes and Objects
//
//  Created by Andrew Miotke on 11/11/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import Foundation

let myCar = Car()

let customerCar = Car(customerChosenColor: "Gold", customerChosenNumberOfSeats: 2, customerChosenCarType: .Hatchback)

print(myCar.color)
print(myCar.numberOfSeats)
print(myCar.typeOfCar)
print("\n")
print(customerCar.color)
print(customerCar.numberOfSeats)
print(customerCar.typeOfCar)

