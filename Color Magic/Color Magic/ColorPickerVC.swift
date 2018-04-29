//
//  ColorPickerVCViewController.swift
//  Color Magic
//
//  Created by Andrew on 4/29/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func colorBtnWasPressed(sender: UIButton) {
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }
}
