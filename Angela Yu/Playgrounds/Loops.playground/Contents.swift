import UIKit

for numbers in 1...10 {
    print(numbers)
}

for numbered in 1..<10 {
    print(numbered)
}

for number in 1..<10 where number % 2 == 0 {
    print(number)
}

// 99 bottles of beer
func beerSong(forThisManyBottlesOfBeer totalNumberOfBottles: Int) -> String {
    var lyrics = ""
    
    for number in (1...totalNumberOfBottles).reversed() {
        let subtractABottle = number - 1
        let newLine = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around \(subtractABottle) bottles of beer on the wall. \n"
        
        lyrics += newLine
    }
    
    lyrics += "\nNo more bottles of beer on the wall, no more bottles ofbeer. \nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    
    return lyrics
}

print(beerSong(forThisManyBottlesOfBeer: 99))
