//: Playground - noun: a place where people can play

import UIKit

var namesOfIntegers = [Int: String]()

namesOfIntegers[3] = "Three"
namesOfIntegers[44] = "Forty four"

namesOfIntegers = [:]


var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]
print("The airports dictionary has: \(airports.count) items")
if airports.isEmpty {
    print("The airports dictionary is empty!")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
airports["DEV"] = "Devs international"

airports["DEV"] = nil

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}


for key in airports.keys {
    print("Key: \(key)")
}


for val in airports.values {
    print("Value: \(val)")
}


// My dictionary
var initials = [String: String]()
initials["AM"] = "Andrew M"
initials["MS"] = "Maggie S"
initials["JB"] = "Joe Bob"
initials["KS"] = "Kevin S"
initials["JA"] = "Johnny A"
initials["JW"] = "Jim W"
initials["OO"] = "Orin O"
initials["ZR"] = "Zebra R"
initials["QW"] = "Quick W"
initials["UI"] = "Ultra I"
initials["PK"] = "Peter K"
initials["CV"] = "Chris V"

for (initialKey, initialName) in initials {
    print("\(initialKey): \(initialName)")
}

for initialsKey in initials.keys {
    print("Initial key is: \(initialsKey)")
}

for initialsValue in initials.values {
    print("The intials stand for: \(initialsValue)")
}

// New dictionary
var carNames = [String: String]()
carNames["VW"] = "Volkswagen"
carNames["AU"] = "Audi"
carNames["BM"] = "BMW"
carNames["MER"] = "Mercedes"

for (carNamesKey, carNamesValue) in carNames {
    print("\(carNamesKey): \(carNamesValue)")
}


// Dictionary with Strings and Ints
var stringsAndInts = [String: Int]()
stringsAndInts["Int1"] = 100
stringsAndInts["Int2"] = 200
stringsAndInts["Int3"] = 300
stringsAndInts["Int4"] = 400

for (stringKey, intValue) in stringsAndInts {
    print("\(stringKey) : \(intValue)")
}

// Dictionary with Ints and Strings
var intsAndStrings = [Int: String]()
intsAndStrings[10] = "Ten"
intsAndStrings[100] = "One Hundred"
intsAndStrings[1000] = "One Thousand"
intsAndStrings[10000] = "Ten Thousand"
intsAndStrings[100000] = "One Hundred Thousand"
intsAndStrings[1000000] = "One Million!"

for (intKey, stringValue) in intsAndStrings {
    print("\(intKey) = \(stringValue)")
}
