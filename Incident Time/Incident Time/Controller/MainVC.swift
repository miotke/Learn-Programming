//
//  ViewController.swift
//  Incident Time
//
//  Created by Andrew Miotke on 7/2/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    // Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var incidentNumber: UILabel!
    @IBOutlet weak var addDayButton: UIButton!
    @IBOutlet weak var resetDayButton: UIButton!
    
    var numberOfDaysNumber = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    
    func setupView() {
        titleLabel.text = "Days since last incident"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "Avenir Next", size: 30)
        
        incidentNumber.text = String(numberOfDaysNumber)
        incidentNumber.textAlignment = .center
        incidentNumber.font = UIFont(name: "Avenir Next", size: 100)
        
        addDayButton.setTitle("+", for: .normal)
        addDayButton.setTitleColor(UIColor.red, for: .normal)
        addDayButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 30)
        
        resetDayButton.setTitle("Reset", for: .normal)
        resetDayButton.setTitleColor(UIColor.green, for: .normal)
        resetDayButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 30)
    }

    // Actions
    @IBAction func addDayButtonWasPressed(_ sender: Any) {
        numberOfDaysNumber += 1
        print("+ 1")
    }
    
    @IBAction func resetDayButtonWasPressed(_ sender: Any) {

        print("Reset to 0")
    }
}

