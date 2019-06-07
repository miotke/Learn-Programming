import UIKit

// 99 bottles of beer
func beerSong(forThisManyBottlesOfBeer totalNumberOfBottles: Int) -> String {
    let bottleType = "beer"
    let noMoreBottlesLeft = "\nNo more bottles of \(bottleType) on the wall, no more bottles of \(bottleType). \nGo to the store and buy some more, 99 bottles of \(bottleType) on the wall.\n"
    var lyrics = ""

    for number in (1...totalNumberOfBottles).reversed() {
        let subtractABottle = number - 1
        let newLine = "\n\(number) bottles of beer on the wall, \(number) bottles of \(bottleType). \nTake one down and pass it around \(subtractABottle) bottles of \(bottleType) on the wall. \n"

        lyrics += newLine
    }

    lyrics += noMoreBottlesLeft

    return lyrics
}

print(beerSong(forThisManyBottlesOfBeer: 99))
