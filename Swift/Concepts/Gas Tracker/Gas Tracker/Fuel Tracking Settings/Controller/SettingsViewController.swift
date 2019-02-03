//
//  SettingsViewController.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/8/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import Lottie

class SettingsViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var settingsLabel: ViewTitleLabel!
    @IBOutlet weak var viewToSLabel: UILabel!
    @IBOutlet weak var resetAllDataButton: UIButton!
    @IBOutlet weak var clearDataSuccessAnimation: LOTAnimationView!
    
    // MARK: Constants
    let colors = Colors()
    let coreDataManager = CoreDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSettingsView()
        clearDataSuccessAnimation.isHidden = true
    }
    
    @IBAction func resetAllDataButtonWasPressed(_ sender: Any) {
       resetDataAlert()
    }
    
    func LOTClearDataSuccessfulAnimation() {
        clearDataSuccessAnimation.backgroundColor = colors.clear
        clearDataSuccessAnimation.isHidden = false
        clearDataSuccessAnimation.setAnimation(named: "clear_data_cross")
        clearDataSuccessAnimation.play()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.clearDataSuccessAnimation.isHidden = true
        }
    }
}

// MARK: Extensions - View setup and UI alert
extension SettingsViewController {
    func setupSettingsView() {
        settingsLabel.text = "Settings"
        viewToSLabel.text = "View Terms of Service:"
    }
    
    func resetDataAlert() {
        let resetDataAlert = UIAlertController.init(title: "Resetting Data", message: "By pressing Reset you will be deleting all saved data", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let deleteAction = UIAlertAction(title: "Reset", style: .destructive) { (deleteData) in
            self.coreDataManager.deleteAllRecords()
            self.LOTClearDataSuccessfulAnimation()
        }
        
        resetDataAlert.addAction(cancelAction)
        resetDataAlert.addAction(deleteAction)
        self.present(resetDataAlert, animated: true)
    }
}
