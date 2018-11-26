//
//  main.swift
//  Classes and Objects
//
//  Created by Andrew Miotke on 11/11/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import Foundation

let myCar = Car()
let mySelfDrivingCar = SelfDrivingCar()

let customerCar = Car(customerChosenColor: "Gold", customerChosenNumberOfSeats: 2, customerChosenCarType: .Hatchback)
let customerSelfDrivingCar = Car(customerChosenColor: "Blue", customerChosenNumberOfSeats: 4, customerChosenCarType: .Sedan)


print(myCar.color)
print(myCar.numberOfSeats)
print(myCar.typeOfCar)
print("\n")
print(customerCar.color)
print(customerCar.numberOfSeats)
print(customerCar.typeOfCar)
print("\n")
print(customerSelfDrivingCar.color)
print(customerSelfDrivingCar.numberOfSeats)
print(customerSelfDrivingCar.typeOfCar)

