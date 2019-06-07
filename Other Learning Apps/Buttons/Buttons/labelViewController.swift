//
//  labelViewController.swift
//  Buttons
//
//  Created by Andrew Miotke on 1/31/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import Foundation

class labelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white

        let label1 = UILabel(frame: CGRect(x: 30, y: 30, width: 150, height: 18))
        label1.backgroundColor = UIColor.black
        label1.textColor = UIColor.white
        label1.text = "Here is some text"
        view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRect(x: 30, y: 130, width: 150, height: 50))
        label2.backgroundColor = UIColor.blue
        label2.textColor = UIColor.red
        label2.text = "More text"
        view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRect(x: 30, y: 230, width: 150, height: 50))
        label3.layer.cornerRadius = 8
        label3.backgroundColor = UIColor.red
        label3.textColor = UIColor.white
        label3.text = "Even more text"
        view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRect(x: 30, y: 330, width: 150, height: 50))
        label4.backgroundColor = UIColor.orange
        label4.textColor = UIColor.black
        label4.text = "Orange Label"
        view.addSubview(label4)
    }
}
