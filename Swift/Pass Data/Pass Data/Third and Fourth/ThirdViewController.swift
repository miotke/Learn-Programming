//
//  ThirdViewController.swift
//  Pass Data
//
//  Created by Andrew Miotke on 12/23/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, CanReceiveData {

    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func receiveData(data: String) {
        label.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == identifier {
            let fourthVC = segue.destination as! FourthViewController
            fourthVC.data = textField.text!
            
            fourthVC.delegate = self
        }
    }
    
    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: identifier, sender: self)
    }
}
