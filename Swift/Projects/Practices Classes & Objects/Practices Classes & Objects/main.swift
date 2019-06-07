//
//  main.swift
//  Practices Classes & Objects
//
//  Created by Andrew Miotke on 11/12/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import Foundation

let car = Car()
let customerCar = Car(customerColor: "Green", customerNumberOfSeats: 2, customerDrivetrain: .allWheelDrive, customerFuelType: .gas, customerTransmission: .manual)

let brewery = Brewery()


print("Default Car 🚙")
print(car.color)
print(car.numberOfSeats)
print(car.drivetrain)
print(car.fuelType)
print(car.transmission)

print("\n")
print("Customer Car 🚗")
print(customerCar.color)
print(customerCar.numberOfSeats)
print(customerCar.drivetrain)
print(customerCar.fuelType)
print(customerCar.transmission)

print("\n")
print(brewery.breweryName)
print(brewery.dateEstablished)
print(brewery.breweryDescription)
print(brewery.popularBeerType)

