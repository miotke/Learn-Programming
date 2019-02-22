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
print("here we go")
