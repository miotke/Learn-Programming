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


// Function attempt #2
var people = 100
var parks = 50

func totalNumberOfPeopleInParks(people: Int, parks: Int) -> Int {
    let multiplyPeopleVsParks = people * parks
    print("\(multiplyPeopleVsParks)")
    return multiplyPeopleVsParks
}

let everything = totalNumberOfPeopleInParks(people: 1000, parks: 20)
let everything2 = totalNumberOfPeopleInParks(people: 123451, parks: 872387)


// Function attempt #3
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

// Function attempt #4
func matchesPerCandle(candles: Int, matches: Int) -> Int {
    if candles <= matches {
        print("We can light all of the candles, all \(candles) of them.")
    } else {
        print("We can't light all of the candles.")
    }
    return matchesVsCandles
}

let matchesVsCandles = matchesPerCandle(candles: 100, matches: 200)


// Function attempt #5
func condoPrice(price: Int, days: Int) -> Int {
    if price >= days {
        print("The price of \(price) a day is ok for \(days) days.")
    } else {
        print("This is WAY too much money!")
    }
    return finalPrice
}

let finalPrice = condoPrice(price: 1000, days: 5)

// Function attempt #6
func foodFunction(burgers: Int, people: Int) -> Int {
    if burgers >= people {
        print("There's too much food for the amount of people here.")
    } else {
        print("We need a lot more food. There are only \(burgers) burgers and \(people)")
    }
    return burgerAmount
}

let burgerAmount = foodFunction(burgers: 30, people: 10)

// Function attempt #7
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

// Function attempt #8
func canPeopleHavePizza(totalPizzas: Int, peopleToEatPizzas: Int) -> Int {
    if totalPizzas <= peopleToEatPizzas {
        print("Everyone gets pizza!")
    } else {
        print("We need more pizza.")
    }
    
    return pizzaTime
}

let pizzaTime = canPeopleHavePizza(totalPizzas: 10, peopleToEatPizzas: 10)



// Function attempt #9
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

// Function attempt #10
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
