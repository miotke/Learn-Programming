//
//  ViewController.swift
//  Pass Data
//
//  Created by Andrew Miotke on 12/23/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

let identifier = "PassingData"

class FirstViewController: UIViewController, CanReceive {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func dataReceived(data: String) {
        label.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == identifier {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            
            secondVC.delegate = self
        }
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        performSegue(withIdentifier: identifier, sender: self)
    }
}

