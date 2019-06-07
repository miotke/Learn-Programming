//
//  SettingsViewController.swift
//  Excusedex
//
//  Created by Andrew Miotke on 12/29/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import Lottie

class SettingsViewController: UIViewController {
    
    // MARK: Constants
    let colors = Colors()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationController()
    }
}

// MARK: Extensions - Navigation Controller
extension SettingsViewController {
    
    func setupNavigationController() {
        self.navigationItem.title = "Settings"
    }
}
