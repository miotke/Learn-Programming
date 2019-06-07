//: Playground - noun: a place where people can play

import UIKit


let optionalImage: UIImage? = #imageLiteral(resourceName: "nil.png")

let nonOptionalImage: UIImage = #imageLiteral(resourceName: "5.png")

// Force unwrapping
var optionalNumber: Int? = 45
var number: Int = 5

if optionalNumber != nil {
    print("optionalNumber has a value of \(optionalNumber!)")
}


// Optional binding
if let constantNumber = optionalNumber {
    print("constantNumber has a value of \(constantNumber)")
} else {
    print("optionalNumber is nil.")
}


func intPrinter() {
    guard let constantNumber = optionalNumber else { return }
    print("constantNumber has a value of \(constantNumber)")
}

intPrinter()


// Implicityly unwrapped optionals
// DON'T DO THIS UNLESS YOU HAVE TO
let assumedValue: Int! = 5
let implicitValue: Int = assumedValue


// nil coalescing & using Ternary Operator
let optionalInt: Int? = nil
let result = optionalInt ?? 0

// Optional chaining
class ComicConAttendee {
    var admissionBadge: AdmissionBadge?
    
    init(badge: AdmissionBadge?) {
        self.admissionBadge = badge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(numberOfDays: Int) {
        self.numberOfDays = numberOfDays
    }
}

let admissionBadge = AdmissionBadge(numberOfDays: 3)
let attendee = ComicConAttendee(badge: admissionBadge)

if let daysAttenable = attendee.admissionBadge?.numberOfDays {
    print("This attendee can enter Comic Con for \(daysAttenable) days.")
} else {
    print("This person has not yet purchased a ticket. Please refer them to the ticketing window.")
}
