//
//  FourthViewController.swift
//  Pass Data
//
//  Created by Andrew Miotke on 12/23/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

protocol CanReceiveData {
    func receiveData(data: String)
}

class FourthViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var data = ""
    var delegate: CanReceiveData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
    }

    @IBAction func button(_ sender: Any) {
        delegate?.receiveData(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
}
