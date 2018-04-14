//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var firstName = "Jack"
var lastName = "Bauer"
var age = 1000

var fullName = firstName + " " + lastName
var fullName2 = "\(firstName) \(lastName) who is of age \(age)"

fullName.append(" III")

var bookTitle = "revenge of the crab cakes"

bookTitle = bookTitle.capitalized

var annoyingChatRoomGuy = "PLEASE HELP ME NOW! HERE IS MY 100 LINES OF CODE"
var lowercasedChat = annoyingChatRoomGuy.lowercased()

var sentence = "What the fetch?! Heck that is crazy"
if sentence.contains("fetch") || sentence.contains("Heck") {
    sentence.replacingOccurrences(of: "fetch", with: "tuna")
    sentence.replacingOccurrences(of: "Heck", with: "Playa")
}
