import UIKit

let myArray = ["some", "cool", "array", "in", "Swift"]
let mySet = Set(["some", "cool", "set", "in", "Swift"])
let myTupel = (swift: "Swift", complement: "is cool!")
let myDictionary = ["my state": "Washington State", "my city": "Tacoma"]
let defaultValues = ["my city": "Tacoma"]
defaultValues["Seattle", default: "Unknown City"]

enum TacomaActivities {
    case brewery(beerType: String)
    case walk(location: String)
    case food(resturant: String)
}

let brewery = TacomaActivities.brewery(beerType: "7 Seas")
