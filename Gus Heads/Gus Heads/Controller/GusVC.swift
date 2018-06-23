//
//  ViewController.swift
//  Gus Heads
//
//  Created by Andrew Miotke on 6/22/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

protocol SelectGusDelegate  {
    func chooseAGus(gusHeadTitle: String, gusHead: UIImage)
}

class GusVC: UIViewController {

    // Outlets
    @IBOutlet weak var gusLabel: UILabel!
    @IBOutlet weak var gusImage: UIImageView!
    @IBOutlet weak var chooseGusButtonLabel: UILabel!
    @IBOutlet weak var chooseGusButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // Actions
    @IBAction func chooseGusButtonWasPressed(_ sender: Any) {
    }
    
}

