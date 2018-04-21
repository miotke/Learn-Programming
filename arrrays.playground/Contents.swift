//: Playground - noun: a place where people can play

import UIKit

var employeeSalaries: [Double] = [45000.0, 54000.0, 100000.0, 20000.0]
print(employeeSalaries.count)

employeeSalaries.append(39000.34)
print(employeeSalaries.count)

employeeSalaries.remove(at: 1)
print(employeeSalaries.count)


var students = [String]()
print(students.count)

students.append("jon")
students.append("alex")
students.append("megan")
students.append("kevin")

students.remove(at: 1)
print(students)
