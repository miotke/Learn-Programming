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
    @IBOutlet weak var zendesk: NSButton!
    @IBOutlet weak var talkdesk: NSButton!
    @IBOutlet weak var atlassian: NSButton!
    
    let serviceArray = ["G Suite", "Zendesk", "Talkdesk", "Atlassian"]
    var buttons: [NSButton] = []
    
    func update() {
        DispatchQueue.main.async {
            self.zendesk.title = "Zendesk"
//            for item in self.serviceArray {
//                let button = NSButton()
//                self.serviceCheckbox.title = "Button \(item)"
//                self.buttons.append(button)
//
//                print(item)
//                print("number of buttons: \(self.buttons.count)")
//            }
        }
    }
    
    @IBAction func serviceCheckboxButton(_ sender: Any) {
    }
}
