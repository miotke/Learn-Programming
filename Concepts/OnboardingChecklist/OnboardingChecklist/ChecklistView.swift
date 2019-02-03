//
//  ChecklistView.swift
//  OnboardingChecklist
//
//  Created by Andrew Miotke on 2/3/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import Cocoa

class ChecklistView: NSView {
    
    @IBOutlet weak var checkBox: NSButton!
    
    let services = ["G Suite", "Rover Admin"]
    
    func update() {
        DispatchQueue.main.async {
            self.checkBox.title = "\(self.services)"
        }
    }
    
    @IBAction func checkBoxCheckedAction(_ sender: Any) {
        
    }
}
