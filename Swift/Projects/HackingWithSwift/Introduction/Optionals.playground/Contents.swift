import UIKit

func getHaterStatus(weather: String) -> String? {
    if weather == "Sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status: String?
status = getHaterStatus(weather: "rainy")

//if let unwrappedStatus = status1 {
//   //unwrappedStatus contains a non-optional value!
//} else {
//    //in case you wanted an else block, here you go...
//}

func yearAlbumReleased(name1: String) -> Int? {
    if name1 == "Taylor Swift" {return 2006}
    if name1 == "Fearless" {return 2008}
    if name1 == "Speak Now" {return 2010}
    if name1 == "Red" {return 2012}
    if name1 == "1989" {return 2014}
    
    return nil
}

var items = ["James", "John", "Sally"]

func position(of string: String, in array: [String]) -> Int {
    for i in 0 ..< array.count {
    if array[i] == string {
            return i
        }
    }
    return 0
}

let jamesPosition = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sallyPosition = position(of: "Sally", in: items)
let bobPosition = position(of: "Bob", in: items)

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" {return 2006}
    if name == "Fearless" {return 2008}
    if name == "Speak Now" {return 2010}
    if name == "Red" {return 2012}
    if name == "1989" {return 2014}

    return nil
}

var year = yearAlbumReleased(name: "red")

if year == nil {
    print("There was an error")
} else {
    print("It was release in \(year!)")
}
