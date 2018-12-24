//
//  EighthViewController.swift
//  Pass Data
//
//  Created by Andrew Miotke on 12/24/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

protocol TakeData {
    func takeData(data: String)
}

class EighthViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textLabel: UITextField!
    
    var data = ""
    var delegate: TakeData?

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = data
    }
    
    @IBAction func button(_ sender: Any) {
        delegate?.takeData(data: textLabel.text!)
        dismiss(animated: true, completion: nil)
    }
}
