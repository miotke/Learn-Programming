import UIKit

let firstScore = 12
let secondScore = 300

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = firstScore % secondScore

let result = 2.5 * 2
print(result)

let firstCard = 6
let secondCard = 2

if firstCard + secondCard == 3 {
    print(firstCard + secondCard)
} else {
    print("It's not equal to 3")
}

if firstCard + secondCard == 3 {
    print("3")
} else if firstCard + secondCard == 21 {
    print("Not 3")
} else {
    print("these cards are terrible")
}

let passingTestScore = 70
let testScore = 80

print(testScore >= passingTestScore ? "Test passed!" : "Test failed.")
