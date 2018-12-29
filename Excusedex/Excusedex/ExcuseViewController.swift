//
//  ViewController.swift
//  Excusedex
//
//  Created by Andrew Miotke on 12/22/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ExcuseViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    let setupCell = SetupCell()
    let excuses = Exuses()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        setupNavigationController()
    }
}


//MARK: Extensions - TableView
extension ExcuseViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return excuses.excuses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = excuses.excuses[indexPath.row]

        return cell
    }
}

// MARK: Extensions - Navigation Controller
extension ExcuseViewController {
    
    func setupNavigationController() {
        self.navigationItem.title = "Excusedex"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "settings"), style: .plain, target: self, action: #selector(settingsButtonTapped))
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.black
    }
    
    @objc func settingsButtonTapped() {
            print("button tapped")
    }
}
