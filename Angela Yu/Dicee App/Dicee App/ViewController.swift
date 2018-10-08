//
//  ViewController.swift
//  Dicee App
//
//  Created by Andrew Miotke on 10/7/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 = 0
    var randomDiceIndex2 = 0
    
    // MARK: Outlets
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: Actions
    @IBAction func rollButtonWasTapped(_ sender: Any) {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        print("🥶 \(randomDiceIndex1), 🥵 \(randomDiceIndex2)")
    }
    
}

