import UIKit

struct Person1 {
    var clothes: String
    var shoes: String
}

let taylor = Person1(clothes: "T-Shirt", shoes: "sneakers")
let other = Person1(clothes: "short skirt", shoes: "high heels")

print(taylor.clothes)
print(other.shoes)


struct Person2 {
    var clothes2: String
    var shoes2: String
}

let taylor2 = Person2(clothes2: "shirt", shoes2: "boots")
let other2 = Person2(clothes2: "flannel", shoes2: "boots")

var taylor2Copy = taylor2
taylor2Copy.shoes2 = "flip flops"

print(taylor2)
print(taylor2Copy)