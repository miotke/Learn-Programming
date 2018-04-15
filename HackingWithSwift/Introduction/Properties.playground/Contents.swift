import UIKit

struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I'm just changing from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirt")
taylor.clothes = "Short Skirt"

struct PersonAge {
    var PersonAge: Int
    
    var ageInDogYears: Int {
        get {
            return PersonAge * 7
        }
    }
}

var fan = PersonAge(PersonAge: 25)
print(fan.ageInDogYears)