//
//  ViewController.swift
//  Seed
//
//  Created by Andrew Miotke on 1/6/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationController()
        tableview.delegate = self
        tableview.dataSource = self
    }
}

// MARK: Extensions - Table view
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
}

// MARK: Extensions - Navigation Controller
extension MainViewController {
    func setupNavigationController() {
        self.navigationItem.title = "Activity"
    }
}
