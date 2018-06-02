//
//  FinishGoalVC.swift
//  Goal Post
//
//  Created by Andrew on 6/2/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    //Outlets
    @IBOutlet weak var createGoalButton: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createGoalButton.bindToKeyboard()
        pointsTextField.delegate = self
    }
    
    func initData(description: String, type: GoalType) {
       self.goalDescription = description
        self.goalType = type
    }
    
    // Actions
    @IBAction func createGoalButtonWasPressed(_ sender: Any) {
        // Pass data into core data goal model
    }
    
    
}
