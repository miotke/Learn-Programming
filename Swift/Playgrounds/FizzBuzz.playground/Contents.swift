import UIKit

// Fizzbuzz

//if divisable by 3 print Fizz
//if divisable by 5 print Buzz
//if divisable by both 3 and 5 print FizzBuzz

// if/else
for i in 1 ... 100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Buzz")
    } else if i % 5 == 0 {
        print("Fizz")
    } else {
        print(i)
    }
}

// switch
for i in 1 ... 100 {
    switch (i % 3 == 0, i % 5 == 0) {
    case (true, false):
        print("Buzz")
    case (false, true):
        print("Fizz")
    case (true, true):
        print("FizzBuzz")
    default:
        print(i)
    }
}

// map()
let fizzbuzz:(Int) -> String = { i in
    switch (i % 3 == 0, i % 5 == 0) {
    case (true, false):
        return "Buzz"
    case (false, true):
        return "Fizz"
    case (true, true):
        return "FizzBuzz"
    default:
        return "\(i)"
    }
}

// switch practice
for i in 1 ... 100 {
    switch (i % 3 == 0, i % 5 == 0) {
    case (true, false):
        print("Fizz")
    case (false, true):
        print("Buzz")
    case (true, true):
        print("FizzBuzz")
    default:
        print(i)
    }
}
