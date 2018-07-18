//
//  FourthViewController.swift
//  Collection Views Pt. 2
//
//  Created by Andrew Miotke on 7/17/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    // Outlets
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setupView() {
        label.text = "Fourth Collection View"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next", size: 30)
        label.backgroundColor = UIColor.brown
        label.textColor = UIColor.green
    }
}
