//
//  SettingsViewController.swift
//  Excusedex
//
//  Created by Andrew Miotke on 12/29/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let colors = Colors()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationController()
        self.view.backgroundColor = colors.black
    }
}

extension SettingsViewController {
    
    func setupNavigationController() {
        self.navigationItem.title = "Settings"
    }
}
