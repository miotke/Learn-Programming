//
//  CheckboxView.swift
//  Onboarding Checklist
//
//  Created by Andrew Miotke on 2/3/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import Cocoa

class CheckboxView: NSView {
    
    @IBOutlet weak var serviceCheckbox: NSButton!
    
    func update() {
        DispatchQueue.main.async {
            self.serviceCheckbox.title = "G Suite"
        }
    }
    
    @IBAction func serviceCheckboxButton(_ sender: Any) {
    }
}
