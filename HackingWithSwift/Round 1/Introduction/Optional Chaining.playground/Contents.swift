import UIKit

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let album = albumReleased(year: 2006) ?? "unkown"
print("The album is \(album)")


let str = "Hello world!"
print(str.uppercased())

