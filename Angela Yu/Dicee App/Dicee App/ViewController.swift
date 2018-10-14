//
//  ViewController.swift
//  Dicee App
//
//  Created by Andrew Miotke on 10/7/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1 = 0
    var randomDiceIndex2 = 0
    
    // MARK: Outlets
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
    }
    
    // Changes the dice face
    func updateDiceImage() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImage1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImage2.image = UIImage(named: diceArray[randomDiceIndex2])
    }

    // MARK: Actions
    @IBAction func rollButtonWasTapped(_ sender: Any) {
        updateDiceImage()
    }
}
