//
//  SecondViewController.swift
//  Passing Data
//
//  Created by Andrew Miotke on 10/13/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var textFromFirstViewController = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = UIColor.black
        
        label.text = textFromFirstViewController
        label.textAlignment = .center
        label.textColor = UIColor.purple
        
        button.setTitle("Dismiss", for: .normal)
    }
    
    // MARK: Actions
    @IBAction func button(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
