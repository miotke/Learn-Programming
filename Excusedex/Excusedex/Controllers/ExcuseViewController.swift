//
//  ViewController.swift
//  Excusedex
//
//  Created by Andrew Miotke on 12/22/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import Lottie

class ExcuseViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var successPopup: LOTAnimationView!
    
    let setupCell = SetupCell()
    let excuses = Exuses()
    let colors = Colors()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        setupNavigationController()
        successPopup.isHidden = true
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let getExuse = excuses.excuses[indexPath.row]
        _ = getExuse
        UIPasteboard.general.string = getExuse
        
        setupSuccessView()
    }
    
    func setupSuccessView() {
        successPopup.backgroundColor = colors.clear
        successPopup.isHidden = false
        successPopup.setAnimation(named: "Check Mark Success Data")
        successPopup.play()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
            self.successPopup.isHidden = true
        }
    }
}

// MARK: Extensions - Navigation Controller
extension ExcuseViewController {
    
    func setupNavigationController() {
        self.navigationItem.title = "Excusedex"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "settings"), style: .plain, target: self, action: #selector(settingsButtonTapped))
        self.navigationItem.rightBarButtonItem?.tintColor = colors.pink
    }
    
    @objc func settingsButtonTapped() {
        performSegue(withIdentifier: "ToSettingsViewController", sender: self)
    }
}
