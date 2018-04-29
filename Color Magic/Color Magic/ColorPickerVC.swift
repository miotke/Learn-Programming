//
//  ColorPickerVCViewController.swift
//  Color Magic
//
//  Created by Andrew on 4/29/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func colorBtnWasPressed(sender: UIButton) {
        print(sender.titleLabel?.text)
    }
}
