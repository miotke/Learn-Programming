//
//  EighthViewController.swift
//  Pass Data
//
//  Created by Andrew Miotke on 12/24/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class EighthViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textLabel: UITextField!
    
    var data = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
    }
    
    @IBAction func button(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
