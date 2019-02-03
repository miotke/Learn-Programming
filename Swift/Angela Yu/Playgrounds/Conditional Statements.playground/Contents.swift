import UIKit

func loveCalculator(yourName: String, theirName: String) -> String {
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80 {
        return ("Your love score is \(loveScore), hooray for love!")
    } else if loveScore > 40 && loveScore <= 80 {
        return ("Your love score is \(loveScore), that's ok I guess")
    } else {
        return ("Your love score is \(loveScore), no love for you!")
    }
}

print(loveCalculator(yourName: "Andrew", theirName: "Maggie"))

