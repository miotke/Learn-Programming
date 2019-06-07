//: Swift Playground - noun: a place where hopes go to die
//  and everything freezes or crashes

import UIKit

func simpleAddition(number1: Int, number2: Int) -> Int {
    print(number1 + number2)
    return addNumbers
}
let addNumbers = simpleAddition(number1: 10, number2: 10)

//_______________________________________________________________________________________________________________________________________

var stringOne = "Here is string #1 🌯"
var stringTwo = "Here is string #2 🧟‍♂️"

func simpleStrings(string1: String, string2: String) -> String {
    print("Mashing two strings, string 1: \(string1) and string 2: \(string2)")
    return printStrings
}

let printStrings = simpleStrings(string1: stringOne, string2: stringTwo)

//_______________________________________________________________________________________________________________________________________

let bus = "We are riding the bus!"
let car = "We are driving a car!"
var driver = "car"

func whatVehicle(bus: String, car: String) -> String {
    if driver == "car" {
        print("\(car)")
    } else {
        print("\(bus)")
    }
    return transportation
}

let transportation = whatVehicle(bus: bus, car: car)
//_______________________________________________________________________________________________________________________________________


var string = "Here's a string that does not include a number"
var number = 30030
func stringsAndNumbers(firstString: String, firstNumber: Int) {
    print("Mashing up strings and numbers: String: \(string) & Number: \(number)")
    return stringNumbers
}

let stringNumbers = stringsAndNumbers(firstString: string, firstNumber: number)

//_______________________________________________________________________________________________________________________________________
// Array
var smallArray = ["Item 1", "Item 2", "Item 3"]

