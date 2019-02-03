//
//  StatusMenuController.swift
//  OnboardingChecklist
//
//  Created by Andrew Miotke on 2/3/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    
    @IBOutlet weak var statusMenu: NSMenu!
    @IBOutlet weak var checklistView: ChecklistView!
    var serviceMenuItem: NSMenuItem!

    
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)


    override func awakeFromNib() {
        super.awakeFromNib()
        serviceMenuItem = statusMenu.item(withTitle: "checklist")
        serviceMenuItem.view = checklistView
        statusItem.menu = statusMenu
        
        let icon = NSImage(named: "statusIcon")
        //        icon?.isTemplate = true // best for darkmode
        statusItem.image = icon
        statusItem.menu = statusMenu
        
        updateWeather()
    }
    
    func updateWeather() {
        self.checklistView.update()
    }
    
    
    
    @IBAction func quitButton(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
}
