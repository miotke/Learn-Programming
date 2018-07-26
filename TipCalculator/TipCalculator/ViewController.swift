//
//  ViewController.swift
//  TipCalculator
//
//  Created by Andrew Miotke on 7/26/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var totalPeopleLabel: UILabel!
    @IBOutlet weak var totalAmountTextField: UITextField!
    @IBOutlet weak var totalPeopleTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        titleLabel.text = "Who owes what?"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "Avenir Next", size: 27)
        
        totalAmountLabel.text = "How much was the total bill?"
        totalAmountLabel.textAlignment = .center
        totalAmountLabel.font = UIFont(name: "Avenir Next", size: 25)
        
        totalPeopleLabel.text = "Party Size?"
        totalPeopleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "Avenir Next", size: 25)
        
        calculateButton.setTitle("Calculate", for: .normal)
    }

    // Actions
    @IBAction func calculateButtonWasPressed(_ sender: Any) {
        print("Tapped")
    }
    
}

