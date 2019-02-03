//
//  FifthViewController.swift
//  Pass Data
//
//  Created by Andrew Miotke on 12/23/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController, ReceiveData {

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
            let sixthVC = segue.destination as! SixthViewController
            sixthVC.data = textField.text!
            
            sixthVC.delegate = self
        }
    }
    
    @IBAction func changeColorButton(_ sender: Any) {
        self.view.backgroundColor = UIColor.gray
    }
    
    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: identifier, sender: self)
    }
}
