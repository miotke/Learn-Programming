import Foundation

// Functions
func functionOne() {
    print("Function One")
}
functionOne()

// Functions - Parameters
func functionParameter(name: String) {
    print("Hello, \(name)")
}
functionParameter(name: "Maggie")

// function - Returning Value
func functionReturnValue(age: Int) -> Int {
    return age + age
}
let result = functionReturnValue(age: 100)
print(result)

// Function - Parameter Labels
func parameterLabels(your age: Int) {
    print("Your age is \(age)")
}
parameterLabels(your: 10)

// Functions - Omitting Parameter Labels
func omittingLabels(_ age: Int) {
    print("Your age is \(age)")
}
omittingLabels(100)

// Functions - Default Parameters
func defaultParameters(isPersonNice:Bool = true) {
    if isPersonNice == true {
        print("person is nice")
    } else {
        print("person is not nice, sad.")
    }
}
defaultParameters(isPersonNice: false)

// Functions - Variadic Functions
func variadic(numbers: Int...) {
    
    for number in numbers {
        print("\(number) more numbers")
    }
}
variadic(numbers: 1, 2, 3, 4, 5)

// Function - Throws
enum PasswordError: Error {
    case badPassword
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "" {
        throw PasswordError.badPassword
    } else {
        print("good password")
    }
    return true
}

// Functions - Running Throwing Functions
enum DogsName: Error {
    case gus
}

func checkDogName(_ dogName: String) throws -> String {
    if dogName == "Polly" {
        throw DogsName.gus
    }
    do {
        try checkDogName("Gus")
        print("Gus is right")
    } catch {
        print("Nope!")
    }
    return "Gus"
}

// Functions - inout Parameters
// changes the parameter type from a let to a var
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 100
doubleInPlace(number: &myNum)
