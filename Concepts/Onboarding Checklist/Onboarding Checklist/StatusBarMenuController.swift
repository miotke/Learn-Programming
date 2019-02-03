//
//  StatusBarMenuController.swift
//  Onboarding Checklist
//
//  Created by Andrew Miotke on 2/3/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import Cocoa

class StatusBarMenuController: NSObject {

    @IBOutlet weak var statusMenu: NSMenu!
    @IBOutlet weak var checkboxView: CheckboxView!
    
    var checkboxMenuItem: NSMenuItem!
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    override func awakeFromNib() {
        let icon = NSImage(named: "statusIcon")
//        icon?.isTemplate = true
        statusItem.image = icon
        statusItem.menu = statusMenu
        
        checkboxMenuItem = statusMenu.item(withTitle: "serviceChecklist")
        checkboxMenuItem.view = checkboxView
        
        updateWeather()
    }
    
    func updateWeather() {
        self.checkboxView.update()
    }
    
    @IBAction func quitButtonClicked(_ sender: Any) {
        NSApplication.shared.terminate(self)
    }
}
