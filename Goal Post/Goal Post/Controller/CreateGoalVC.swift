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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Actions
    @IBAction func nextButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func shortTermButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func longTermButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
