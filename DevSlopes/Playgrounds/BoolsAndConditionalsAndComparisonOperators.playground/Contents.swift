//: Playground - noun: a place where people can play

import UIKit

var doesXcodeCrash = true
doesXcodeCrash = false

if true == false || true == true {
    print("WTFish")
}


var hasDataFinishedDownloading = false
    //...
    //...
if !hasDataFinishedDownloading {
    print("Loading data...")
}

hasDataFinishedDownloading = true
// Load UI ando ther app features

// Equal to: ==
// Not Equal to: !=
// Greater than: >
// Greater than or equal to: >=
// Less than or equal to: <=
// Less than: <

var bankBalance = 400
var itemToBuy = 400

if bankBalance >= itemToBuy {
    print("Purchased item")
}

if itemToBuy > bankBalance {
    print("you need more money")
}

if itemToBuy == bankBalance {
    print("Your balance is now 0")
}

var amIAtZero = itemToBuy == bankBalance

var bookTitle1 = "Harry Glo"
var bookTitle2 = "Harry Glo"

if bookTitle1 != bookTitle2 {
    print("Fix spelling")
} else if bookTitle2.characters.count > 10 {
    print("Find a new title for the book")
}
else {
    print("Spelling is correct, send to printer")
}


















































