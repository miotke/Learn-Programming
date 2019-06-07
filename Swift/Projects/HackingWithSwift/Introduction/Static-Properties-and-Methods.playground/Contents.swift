import UIKit

struct TaylorFan {
    static var favoriteSong = "Shake it off"
    
    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)

let fan2 = TaylorFan(name: "Randy", age: 32)
print(TaylorFan.favoriteSong)