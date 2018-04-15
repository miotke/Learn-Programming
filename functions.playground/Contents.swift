//: Playground - noun: a place where people can play

import UIKit

// Shape 1
var length = 5
var width = 10
var area = length * width

// Shape 2
var length2 = 6
var width2 = 12
var area2 = length2 * length2

// Shape 3
var length3 = 3
var width3 = 8
var area3 = length3 * length3

// Functions
func calculateArea(length: Int, width: Int) -> Int{
    let area = length * width
    return area
}

let shape1 = calculateArea(length: 5, width: 4)
let shape2 = calculateArea(length: 10, width: 10)
let shape3 = calculateArea(length: 20, width: 10)

var bankAccountBalance = 500.00
var shoes = 350.00
var retroLunchBox = 40.00

func purchaseItem(currentBalance: Double, itemPrice: Double) -> Double {
    if itemPrice <= currentBalance {
        print("Purchased item for: $\(itemPrice)")
        return currentBalance - itemPrice
    } else {
        print("You are broke")
        return currentBalance
    }
}

let newBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: retroLunchBox)

