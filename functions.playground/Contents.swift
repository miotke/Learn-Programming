//: Playground - noun: a place where people can play

import UIKit

// Shape 1
var length = 5
var width = 10
var area = length * width

// Shape 2
var length2 = 6
var width2 = 12
var area2 = length2 * length2

// Shape 3
var length3 = 3
var width3 = 8
var area3 = length3 * length3

// Functions
func calculateArea(length: Int, width: Int) -> Int {
    let area = length * width
    return area
}

let shape1 = calculateArea(length: 5, width: 4)
let shape2 = calculateArea(length: 10, width: 10)
let shape3 = calculateArea(length: 20, width: 10)

var bankAccountBalance = 500.00
var shoes = 350.00
var retroLunchBox = 40.00

func purchaseItem(currentBalance: Double, itemPrice: Double) -> Double {
    if itemPrice <= currentBalance {
        print("Purchased item for: $\(itemPrice)")
        return currentBalance - itemPrice
    } else {
        print("You are broke")
        return currentBalance
    }
}

let newBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: retroLunchBox)


// New function
var dogs = 100
var cats = 200

func addDogsAndCats(dogs: Int, cats: Int) -> Int {
    let totalDogsAndCats = dogs + cats
    return totalDogsAndCats
}

let petPark1 = addDogsAndCats(dogs: 10, cats: 30)
let petPark2 = addDogsAndCats(dogs: 100, cats: 50)
let petPark3 = addDogsAndCats(dogs: 98127, cats: 3123)


// Function #2
var people = 100
var parks = 50

func totalNumberOfPeopleInParks(people: Int, parks: Int) -> Int {
    let multiplyPeopleVsParks = people * parks
    print("\(multiplyPeopleVsParks)")
    return multiplyPeopleVsParks
}

let everything = totalNumberOfPeopleInParks(people: 1000, parks: 20)
let everything2 = totalNumberOfPeopleInParks(people: 123451, parks: 872387)


// Function #3
var laptops: Int
var backpacks: Int

func laptopsPerBackpack(laptops: Int, backpacks: Int) -> Int {
    if backpacks <= laptops {
        print("There are enough backpacks for every laptop.")
    } else {
        print ("There are not enough backpacks, you don't get a laptop today.")
    }
    return availableLaptops
}

let availableLaptops = laptopsPerBackpack(laptops: 100, backpacks: 300)

// Function #4
func matchesPerCandle(candles: Int, matches: Int) -> Int {
    if candles <= matches {
        print("We can light all of the candles, all \(candles) of them.")
    } else {
        print("We can't light all of the candles.")
    }
    return matchesVsCandles
}

let matchesVsCandles = matchesPerCandle(candles: 100, matches: 200)


// Function #5
func condoPrice(price: Int, days: Int) -> Int {
    if price >= days {
        print("The price of \(price) a day is ok for \(days) days.")
    } else {
        print("This is WAY too much money!")
    }
    return finalPrice
}

let finalPrice = condoPrice(price: 1000, days: 5)

// Function #6
func foodFunction(burgers: Int, people: Int) -> Int {
    if burgers >= people {
        print("There's too much food for the amount of people here.")
    } else {
        print("We need a lot more food. There are only \(burgers) burgers and \(people)")
    }
    return burgerAmount
}

let burgerAmount = foodFunction(burgers: 30, people: 10)

// Function #7
var busSeats = 100
var passengers = 90

func busMethod(busSeats: Int, passengers: Int) -> Int {
    if busSeats <= passengers {
        print("The bus can take off.")
    } else {
        print("We should wait for more passengers.")
    }
    return busPassenger
}

let busPassenger = busMethod(busSeats: busSeats, passengers: passengers)

// Function #8
func canPeopleHavePizza(totalPizzas: Int, peopleToEatPizzas: Int) -> Int {
    if totalPizzas <= peopleToEatPizzas {
        print("Everyone gets pizza!")
    } else {
        print("We need more pizza.")
    }
    
    return pizzaTime
}

let pizzaTime = canPeopleHavePizza(totalPizzas: 10, peopleToEatPizzas: 10)



// Function #9
var availableBeers = 6
var availableGlasses = 10

func glassesForBeers(beers: Int, glasses: Int) -> Int {
    if beers <= glasses {
        print("There are enough glasses for beers. \(beers) beers and \(glasses) glasses")
    } else {
        print("We might need to get more glasses. We only have \(beers) beers and \(glasses) glasses")
    }
    
    return freeGlasses
}

let freeGlasses = glassesForBeers(beers: availableBeers, glasses: availableGlasses)

// Function #10
var peopleToSkate = 1000
var skateboards = 3000

func skateboardsForPeople(peopleToSkate: Int, skateboards: Int) -> Int {
    if peopleToSkate <= skateboards {
        print("There are \(peopleToSkate) people and this many skateboards \(skateboards), lets skate!")
    } else {
        print("Sadly there are not enough skateboards to give to all \(peopleToSkate) people")
    }
    
    return availableSkateboards
}

let availableSkateboards = skateboardsForPeople(peopleToSkate: peopleToSkate, skateboards: skateboards)

// Function #11
var cars = 100
var lanes = 90

func carsOnStreet(cars: Int, lanes: Int) -> Int {
    if cars >= lanes {
        print("There too many cars for the \(lanes) lanes that are available.")
    } else {
        print("Let the cars drive freely.")
    }
    
    return carsOnRoad
}

let carsOnRoad = carsOnStreet(cars: cars, lanes: lanes)


// Function #12 with strings
var name1 = "Bob"

func whoIsWho(person1: String) -> String {
    if name1 == "Bob" {
        print("\(name1), you are allowed to pass.")
    } else {
        print("You may not pass!")
    }
    return personsName
}
let personsName = whoIsWho(person1: name1)

// Function #13 with strings
let approvedName = "gary"
let notApprovedName = "ron"

func whatIsYourName(approvedName: String, notApprovedName: String) -> String {
    if approvedName == "Gary" {
        print("Welcome \(approvedName)")
    } else {
        print("Please leave \(notApprovedName) as you are not \(approvedName).")
    }
    return whoIs
}
let whoIs = whatIsYourName(approvedName: approvedName.capitalized, notApprovedName: notApprovedName.capitalized)

// Functions #14 with strings
var goodCar = "volkswagen"
let badCar = "chevy"

func carName(goodCar: String, badCar: String) -> String {
    if goodCar == "Volkswagen" {
        print("\(goodCar)'s are good cars.")
    } else {
        print("You should have bought a \(goodCar)")
    }
    return car
}
let car = carName(goodCar: goodCar.capitalized, badCar: badCar.capitalized)

// Function #15 with strings
func dogtype(dog1: String, dog2: String) -> String {
    if dog1 == "frenchie" {
        print("Good luck on those medical bills")
    } else {
        print("You will still have medical bills.")
    }
    return dogBreed
}

var dogBreed = dogtype(dog1: "frenchie".capitalized, dog2: "corgie".capitalized)

// Function #16
//var availableBudget = 10000
//var computerCost = 4000
//var totalBudget = 30000
//
//func findBudgetFit(availableBudget: Int, computerCost: Int) -> Int {
//    availableBudget / computerCost
//    
//    return budget
//}
//let budget = findBudgetFit(availableBudget: availableBudget, computerCost: computerCost)



























