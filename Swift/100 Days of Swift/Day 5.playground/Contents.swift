import UIKit

// Functions
func printHelp() {
    let message = """
    Welcome to MyApp!

    Run this app inside a directory of images and
    MyApp will resize them all into thumbnails
    """
    
    print(message)
}

printHelp()

// ------------------------------------------------------------------------------------------------------------------------------------
func square(number: Int) {
    print(number + number)
}

square(number: 8)

// ------------------------------------------------------------------------------------------------------------------------------------
func doMath(number: Int, name: String) {
    print("\(name) answered \(number) + \(number) correctly")
    print(number + number)
}

doMath(number: 10, name: "Maggie")

// ------------------------------------------------------------------------------------------------------------------------------------
func doMoreMath(number: Int) -> Int {
    return number * number
}

let resultOfDoMoreMath = doMoreMath(number: 9)
print(resultOfDoMoreMath)

// ------------------------------------------------------------------------------------------------------------------------------------
func sayHell(to name: String) {
    print("Hello, \(name)")
}

sayHell(to: "Maggie")
