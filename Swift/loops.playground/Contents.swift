import UIKit

for i in 1 ... 10 {
    print("\(i) x 10 is \(i * 10)")
}

var songes = ["Favorite Song 1", "Favorite Song 2", "Favorite Song 3"]
for song in songes {
    print("This is my favorite song \(songes)")
}

for r in 1 ... 200 {
    print("\(r) x 20 is \(r * 10)")
}

//Looping over arrays
var person = ["Person 1", "Person 2", "Person 3"]
var action = ["Run", "Walk", "Jog"]

for i in 0 ... 2 {
    print("\(person[i]) decided to \(action[i])")
}


var dog = ["dog 1", "dog 2", "dog 3", "dog 4"]
var car = ["car 1", "car 2", "car 3", "car 4"]

for b in 0 ... 3 {
    print("\(dog[b]) jumped into \(car[b])")
}

//Inner loops
var bus = ["bus 1", "bus 2", "bus 3", "bus 4"]
var driver = ["driver 1", "driver 2", "driver 3", "driver 4"]

for c in 0 ..< bus.count {
    var str = "\(bus[c]) gonna"
    
    for _ in 1 ... 5 {
        str += " \(driver[c])"
    }
    print(str)
}

//While loops
var songs = ["Shake it off", "You belong with me", "Back to December"]

for song in songs {
    if song == "You belong with me" {
        continue
    }
    print("My favorite song is \(song)")
}


var maggie = ["Maggie"]
var emotion = ["is dope!", "is the best!", "is amazing! "]

for name in maggie {
    print("\(maggie) \(emotion)")
}
