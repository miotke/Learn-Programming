import UIKit

func favoriteAlbum(name: String) {
    print("My favorite album is \(name)")
}
favoriteAlbum(name: "Fearless")

func printAlbumRelease(albumName: String, year: Int) {
    print("\(albumName) was release in \(year)")
}

printAlbumRelease(albumName: "Fearless", year: 2008)
printAlbumRelease(albumName: "Speak Now", year: 2010)
printAlbumRelease(albumName: "Red", year: 2012)
printAlbumRelease(albumName: "Float", year: 1999)

func countLettersInString(myString str: String) {
    print("The string \(str) has this many: \(str.characters.count)")
}
countLettersInString(myString: "hello")

func countingMoreLetters( _ str: String) {
    print("There are more letters in \(str) than in the other \(str.characters.count)")
}

countingMoreLetters("Hello Again")

//How to really write this type of function ^^
func countAllTheLetters(in string: String) {
    print("Look at all of these letters in \(string.characters.count), there are just soooo many")
}

countAllTheLetters(in: "Look at all of these crazy characters!!!!")


var maggies = "Maggies"
func countMaggie(in string: String) {
    print("The joke's on you, there's only \(maggies.characters.count)!")
}

countMaggie(in: "Joke's on you, there is still only Maggie! \(maggies)")


//Return values
func albumIsTaylor(taylorName: String) -> Bool {
    if taylorName == "Taylor Swift" {return true}
    if taylorName == "Fearless" {return true}
    if taylorName == "Speak Now" {return true}
    if taylorName == "Red" {return true}
    if taylorName == "1989" {return true}
    
    return false
}

