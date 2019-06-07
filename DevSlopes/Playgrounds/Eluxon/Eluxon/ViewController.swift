//
//  ViewController.swift
//  Eluxon
//
//  Created by Andrew on 4/29/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffLbl: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off {
            toggleBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.4078193307, green: 0.4078193307, blue: 0.4078193307, alpha: 1)
            onOffLbl.text = "Off 🌚"
            onOffLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            toggleBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOffLbl.text = "On 🌝"
            onOffLbl.textColor = #colorLiteral(red: 0.4078193307, green: 0.4078193307, blue: 0.4078193307, alpha: 1)
        }
    }
}

