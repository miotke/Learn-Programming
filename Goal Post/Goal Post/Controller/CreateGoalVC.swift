//
//  CreateGoalVC.swift
//  Goal Post
//
//  Created by Andrew on 5/31/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var goalType: GoalType = .shortTerm
    

    override func viewDidLoad() {
        super.viewDidLoad()

        nextButton.bindToKeyboard()
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
    }
    
    // Actions
    @IBAction func nextButtonWasPressed(_ sender: Any) {
    
    }
    
    @IBAction func shortTermButtonWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
    }
    
    @IBAction func longTermButtonWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermButton.setSelectedColor()
        shortTermButton.setDeselectedColor()
    }
    
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
