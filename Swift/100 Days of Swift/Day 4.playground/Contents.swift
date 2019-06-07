import UIKit

// For loops
// for loop of Int
let firstLoop = 1 ... 10
for i in firstLoop {
    print(i)
}

// for loop over array
let arrayLoop = ["Maggie", "Gus", "Andrew"]
for n in arrayLoop {
    print(n)
}

// for loop without a constant
for _ in 1 ... 10 {
    print("Some numbers")
}

// While loops
var start = 1

while start <= 20 {
    print(start)
    start += 1
}
print("end of while loop 1")

var i = 10

while i == 20 {
    print(i)
    i += 1
}
print("end of while loop 2")

// Repeat loops
var n = 1

repeat {
    print(n)
    n += 1
} while n <= 10
print("end of repeat loop")

// Exiting loops
var r = 10
while r >= 0 {
    print(r)
    
    if r == 4 {
        print("exiting anyways at \(r)")
        break
    }
    r -= 1
}
print("end of exiting loop")

// Exiting multiple loops
outerLoop: for o in 1 ... 10 {
    for w in 1 ... 10 {
        let product = o * w
        print("\(o) * \(w) = \(product)")
        
        if product == 500 {
            print("end exiting multiple loops")
            break outerLoop
        }
    }
}

// Skipping items
for t in 1 ... 10 {
    if t % 2 == 1 {
        continue
    }
    print(t)
}

// Infinite loop with a break check
var z = 0

while true {
    print(" ")
    z += 1
    
    if z == 100 {
        break
    }
}
