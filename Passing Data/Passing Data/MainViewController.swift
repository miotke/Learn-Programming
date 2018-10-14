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
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    var textFromLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        label.text = "\(textFromLabel)"
        label.textAlignment = .center
        saveButton.setTitle("Change Label Text", for: .normal)
        button.setTitle("Move to next VC", for: .normal)
    }
    
    func setLabelText() {
        if let textInput = textField.text {
            label.text = textInput
            textFromLabel = textInput
        } else {
            print("☠️ No Text Available")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! SecondViewController
        destVC.textFromFirstViewController = textFromLabel
    }

    // MARK: Actions
    @IBAction func saveButton(_ sender: Any) {
        setLabelText()
    }
    
    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: moveToSecondViewController, sender: self)
    }
}

