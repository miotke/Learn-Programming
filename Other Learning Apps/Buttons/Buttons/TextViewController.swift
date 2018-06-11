//
//  TextViewController.swift
//  Buttons
//
//  Created by Andrew Miotke on 2/1/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        // Blue text field
        let textView1 = UITextView(frame: CGRect(x: 30, y: 30, width: 200, height: 100))
        textView1.backgroundColor = UIColor.blue
        textView1.textColor = UIColor.orange
        textView1.text = "Place holder text"
        view.addSubview(textView1)
        
        // Orange text field
        let orangeTextField = UITextView(frame: CGRect(x: 30, y: 160, width: 300, height: 80))
        orangeTextField.backgroundColor = UIColor.orange
        orangeTextField.textColor = UIColor.black
        orangeTextField.text = "Orange text field"
        view.addSubview(orangeTextField)
    }
}
