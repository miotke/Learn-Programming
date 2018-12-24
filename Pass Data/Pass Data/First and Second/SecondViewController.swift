//
//  SecondViewController.swift
//  Pass Data
//
//  Created by Andrew Miotke on 12/23/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var data = ""
    var delegate: CanReceive?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
}
