import UIKit

//for numbers in 1...10 {
//    print(numbers)
//}
//
//for numbered in 1..<10 {
//    print(numbered)
//}
//
//for number in 1..<10 where number % 2 == 0 {
//    print(number)
//}

// 99 bottles of beer
func beerSong() -> String {
    var lyrics = ""
    
    return lyrics
}

print(beerSong())

for bottlesOfBeer in 1...99 {
    let subtractBottle = bottlesOfBeer - 1
    print ("\(bottlesOfBeer) bottles of beer on the wall, \(bottlesOfBeer) bottles of beer. Take one down and pass it around, \(subtractBottle) of beer on the wall.")
}
