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
    
    var numberOfDaysSinceIncident: Int = 0 {
        didSet {
            incidentNumber.text = "\(numberOfDaysSinceIncident)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        numberOfDaysSinceIncident = 0
    }
    
    func setupView() {
        titleLabel.text = "Days since last incident"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "Avenir Next", size: 30)

        incidentNumber.text = String(numberOfDaysSinceIncident)
        incidentNumber.textAlignment = .center
        incidentNumber.font = UIFont(name: "Avenir Next", size: 100)

        addDayButton.setTitle("+", for: .normal)
        addDayButton.setTitleColor(UIColor.white, for: .normal)
        addDayButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 40)
        addDayButton.backgroundColor = UIColor.green
        addDayButton.layer.cornerRadius = 0.5 * addDayButton.bounds.size.width

        resetDayButton.setTitle("Reset", for: .normal)
        resetDayButton.setTitleColor(UIColor.red, for: .normal)
        resetDayButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 30)
    }
    
    func increaseDay(numberOfDays: Int) -> Int {
        numberOfDaysSinceIncident += 1
        return numberOfDaysSinceIncident
    }

    // Actions
    @IBAction func addDayButtonWasPressed(_ sender: Any) {
        numberOfDaysSinceIncident += 1
        print("+")
    }
    
    @IBAction func resetDayButtonWasPressed(_ sender: Any) {
        self.numberOfDaysSinceIncident = 0
        incidentNumber.text = String(numberOfDaysSinceIncident)
        print("Reset to 0")
    }
}

