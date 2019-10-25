import UIKit

func test() {
    print("hello, this is a function")
    
    simpleMath()
}

func simpleMath() {
    let a = 10
    let b = 123123
    
    let c = a * b
    print(c)
}


func moreMath(i:Int, o:Int) -> Int {
    let f = i + o
    print(f)
    
    return f
}

func loops() {
    for i in 1...10 {
        print(i)
    }
}

func stringsAndStuff() {
    let firstName = "Andrew"
    let lastName = "Miotke"
    
    print("First: \(firstName)\nLast: \(lastName)")
}

func stringsAndNumbers() {
    let words = "Here are some words"
    let a = 100
    let b = 2000
    
    let c = "A: \(a) B: \(b) and all the words are \(words)"
    
    return print(c)
}

stringsAndNumbers()
stringsAndStuff()
loops()
test()
moreMath(i:100, o:200)
