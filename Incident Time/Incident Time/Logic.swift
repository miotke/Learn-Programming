//
//  Logic.swift
//  Incident Time
//
//  Created by Andrew Miotke on 11/25/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import Lottie

class Logic {
    let UI = MainVC()
    
    var numberOfDaysSinceIncident: Int = 0 {
        didSet {
            UI.incidentNumber.text = "\(numberOfDaysSinceIncident)"
        }
    }
    
    func increaseDay(numberOfDays: Int) -> Int {
        numberOfDaysSinceIncident += 1
        return numberOfDaysSinceIncident
    }
    
    func incrementNumberByOne() {
        UI.lottieView.isHidden = true
        numberOfDaysSinceIncident += 1
        print("+")
    }
    
    func resetCounter() {
        self.numberOfDaysSinceIncident = 0
        UI.incidentNumber.text = String(numberOfDaysSinceIncident)
        UI.lottieView.isHidden = false
        print("Reset to 0")
    }
    
    func playAnimation() {
        UI.lottieView.setAnimation(named: "coffee")
        UI.lottieView.play()
        UI.lottieView.loopAnimation = true
    }
}
