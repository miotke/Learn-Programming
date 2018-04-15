//: Playground - noun: a place where people can play

import UIKit

//extension Int {
//    mutating func plusOne() {
//        return self += 1
//    }
//}

//var myInt = 0

//myInt.plusOne()
//5.plusOne()


//var myInt = 10
//myInt.plusOne()
//myInt
//
//
//var anotherInt = 100
//anotherInt.plusOne()


extension Int {
    func squared() -> Int {
        return self * self
    }
}

extension BinaryInteger {
    func squared() -> Self {
        return self * self
    }
}
let i: Int = 8
print(i.squared())


let j: UInt64 = 8
print(j.squared())

let w: UInt = 8000
print(w.squared())
