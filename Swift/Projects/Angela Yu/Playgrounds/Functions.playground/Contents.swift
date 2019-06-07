// Basic function in lesson 7 section 68
// Create the getMilk() function
func getMilk() {
    print("Go to the shops")
    print("Buy two cartons of milk")
    print("Pay $2")
    print("Come home")
}

// Functions pt. 2
func getMilk2(howManyMilkCartons: Int) {
    let priceToPay = howManyMilkCartons * 2
    
    print("Go to the shops")
    print("Buy \(howManyMilkCartons) cartons of milk")
    print("Pay $\(priceToPay)")
    print("Come home")
}

// Functions pt. 3
func getMilk3(howManyMilkCartons: Int, howMuchMoneyRobotWasGiven: Int) -> Int {
    let priceToPay = howManyMilkCartons * 2
    let change = howMuchMoneyRobotWasGiven - priceToPay
    
    print("Go to the shops")
    print("Buy \(howManyMilkCartons) cartons of milk")
    print("Pay $\(priceToPay)")
    print("Come home")
    
    return change
}


// Calling the getMilk() function
getMilk()
getMilk2(howManyMilkCartons: 10)
var amountOfChange = getMilk3(howManyMilkCartons: 1, howMuchMoneyRobotWasGiven: 10)
print("Hello master, here is your $\(amountOfChange) change")
