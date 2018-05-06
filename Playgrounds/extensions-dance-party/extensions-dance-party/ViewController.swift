//
//  ViewController.swift
//  extensions-dance-party
//
//  Created by Andrew on 4/28/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorizeButton: UIButton!
    @IBOutlet weak var wiggleButton: UIButton!
    @IBOutlet weak var dimButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func colorizeBtnWasPressed(_ sender: Any) {
        colorizeButton.colorize()
    }
    
    @IBAction func wiggleBtnWasPressed(_ sender: Any) {
        wiggleButton.wiggle()
        wiggleButton.colorize()
    }
    
    @IBAction func dimBtnWasPressed(_ sender: Any) {
        dimButton.dim()
    }
}

