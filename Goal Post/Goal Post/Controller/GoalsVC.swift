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
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
    }
    
    @IBAction func addGoalButtonWasPressed(_ sender: Any) {
       print("button was pressed")
    }
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return  UITableViewCell() }
        cell.configureCell(description: "eat salad twice a week", type: .shortTerm, goalProgressAmount: 1)
        return cell
    }
}





























