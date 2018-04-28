//: Playground - noun: a place where people can play

import UIKit

// Vehicle class
class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    
    func drive() {
        // accelerate the vehicle
        
    }
    
    func brake() {
        
    }
}


let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"
ford.brake()

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)

passByReference(vehicle: ford)
print(ford.model)


// Volkswagen class
class Volkswagen {
    var generation = ""
    var model = ""
    var subModel = ""
    var motor = ""
}

let newVW = Volkswagen()
newVW.generation = "mkII"
newVW.model = "Golf"
newVW.subModel = "GTI"
newVW.motor = "1.8L 16v"

print("My new Volkswagen is a \(newVW.generation) \(newVW.model) \(newVW.subModel), with a \(newVW.motor)")


// Audi class
class Audi {
    var generation = ""
    var model = ""
    var type = ""
}

let wantedAudi = Audi()
wantedAudi.generation = "B5"
wantedAudi.model = "RS 4"
wantedAudi.type = "Avant"

print("Audi, we'll settle for new \(wantedAudi.model) \(wantedAudi.type)'s." )
print("However, the \(wantedAudi.generation) \(wantedAudi.model) is what I really want.")

















