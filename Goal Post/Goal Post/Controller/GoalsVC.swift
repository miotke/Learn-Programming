//
//  GoalsVC.swift
//  Goal Post
//
//  Created by Andrew on 5/30/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addGoalButtonWasPressed(_ sender: Any) {
       print("button was pressed")
    }
}

