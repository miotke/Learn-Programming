//
//  ViewController.swift
//  Passing Data
//
//  Created by Andrew Miotke on 10/13/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

let moveToSecondViewController = "ToSecondViewController"

class MainViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        label.text = "Move the text below to another VC"
        label.textAlignment = .center
        
        button.setTitle("Move to next VC", for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! SecondViewController
        destVC.textFromFirstViewController = 
    }

    // MARK: Actions
    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: moveToSecondViewController, sender: self)
    }
}

