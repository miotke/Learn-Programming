//: Playground - noun: a place where people can play

import UIKit

// Bad
var employee1Salary = 45000.0
var employee2Salary = 100000.0
var employee3Salary = 54000.0
var employee4Salary = 20000.0

employee1Salary = employee1Salary + (employee1Salary * 0.10)
employee2Salary = employee2Salary + (employee2Salary * 0.10)
employee3Salary = employee3Salary + (employee3Salary * 0.10)
employee4Salary = employee4Salary + (employee4Salary * 0.10)
// End Bad

var employeeSalaries: [Double] = [45000.0, 100000.0, 54000.0, 20000.0,45000.0, 100000.0, 54000.0, 20000.0,45000.0, 100000.0, 54000.0, 20000.0]
// Almost better
employeeSalaries[0] = employeeSalaries[0] + (employeeSalaries[0] * 0.10)
employeeSalaries[1] = employeeSalaries[1] + (employeeSalaries[1] * 0.10)
employeeSalaries[2] = employeeSalaries[2] + (employeeSalaries[2] * 0.10)
employeeSalaries[3] = employeeSalaries[3] + (employeeSalaries[3] * 0.10)
// End Almost better

// Good with loops
var index = 0

    // While loop
repeat {
    employeeSalaries[index] = employeeSalaries[index] + (employeeSalaries[index] * 0.10)
    index += 1
} while (index < employeeSalaries.count)
print(employeeSalaries)
// End Good


for i in 0..<employeeSalaries.count {
    employeeSalaries[i] = employeeSalaries[i] + (employeeSalaries[i] * 0.10)
}
print(employeeSalaries)


//for z in 0...100 {
//    print("\(z)")
//}
//
//for appleInBucket in 100..<200 {
//    print("\(appleInBucket)")
//}

for salary in employeeSalaries {
    print("Salary: \(employeeSalaries)")
}

var volkswagens: [String] = ["Golf", "Jetta", "Passat", "Fox"]

for model in volkswagens {
    print("Model: \(volkswagens)")
}

// Line numbers loop
var lineNumbersAreAvailable = true
var lineNumberStart = 1
var lineNumberRange = 120

func getLineNumbers() -> Bool {
    if lineNumbersAreAvailable == true {
        for lineNumberStart in 1...lineNumberRange {
            print("\(lineNumberStart)")
        }
    } else {
        print("Need numners")
    }
    return lineNumbersAreAvailable
}

getLineNumbers()


var audiModel: [String] = ["A3", "S3", "RS3", "A4", "S4", "RS4", "A5", "S5", "RS5", "A6", "S7", "RS7", "A8", "A8L", "S8", "R8"]
for audiType in audiModel {
    print("\(audiModel)")
}

for loop in 1 ..< 100 {
    print("\(loop)")
}

for bigLoop in 1 ... 1000 {
    print("\(bigLoop)")
}
