//
//  SeventhViewController.swift
//  Pass Data
//
//  Created by Andrew Miotke on 12/24/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController, TakeData {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textLabel: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func takeData(data: String) {
        label.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == identifier {
            let eighthVC = segue.destination as! EighthViewController
            eighthVC.data = textLabel.text!
            
            eighthVC.delegate = self
        }
    }
    
    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: identifier, sender: self)
    }
}
