//: Playground - noun: a place where people can play

import UIKit

var playgroundsString = "Swift Playgrounds are great"
var sarcasticResponse = "for crashing and not working properly"

func sarcasticFunc(string1: String, string2: String) -> String {
    print("\(playgroundsString)...\(sarcasticResponse)")
   return playground
}

let playground = sarcasticFunc(string1: playgroundsString, string2: sarcasticResponse)


func getNumber(numberOne: Double, numberTwo: Double) -> Double {
    if numberOne + numberTwo == 100 {
        print("This is correct")
    } else {
        print("This is wrong")
    }
    return getTheNumber
}

let getTheNumber = getNumber(numberOne: 49.5, numberTwo: 50.5)


var weatherType = "sunny"
var numberOfDrivers = "100"

func isTrafficGood(weather: String, drivers: String) {
    if weather == "sunny" {
        print("Traffic will not be too bad")
    } else {
        print("OH GAWD JUST STAY HOME!")
    }
    return trafficCraze
}

let trafficCraze = isTrafficGood(weather: weatherType, drivers: numberOfDrivers)


func createLineNumbers(lineNumbers: Int, textLines: Int)  -> Int {
    for lineNumbers in textLines ... 100 {
        print("\(lineNumbers)")
    }
    return lineNumbers
}

let calcLineNumbers = createLineNumbers(lineNumbers: 100, textLines: 10)

func createLoop(int1: Int, int2: Int) -> Int {
    for number in int1 ... int2 {
        print("\(number)")
    }
    return number
}
let number = createLoop(int1: 100, int2: 1000)

