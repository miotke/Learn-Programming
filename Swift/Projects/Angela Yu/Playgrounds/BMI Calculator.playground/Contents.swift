import UIKit

func getBMI(weight: Double, height: Double) -> String {
    let calculateBMI = weight / pow(height, 2)
    var interpretation = ""
    
    let shortenedBMI = String(format: "%.2f", calculateBMI)
    
    if calculateBMI > 25 {
        interpretation = "You're overweight"
    } else if calculateBMI > 18.5 {
        interpretation = "You're a normal weight"
    } else {
        interpretation = "You're underweight"
    }
    
    return "You're BMI is \(shortenedBMI) and \(interpretation)"
}

var bmiResult = getBMI(weight: 180, height: 6.2)
print(bmiResult)
