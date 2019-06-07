//
//  ViewController.swift
//  Project35
//
//  Created by Andrew Miotke on 11/21/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var showRandomNumber: UILabel!
    
    @IBAction func makeRandomNumber(_ sender: Any) {
        let createRandomNumber = GKRandomDistribution.d20()
        createRandomNumber.nextInt()
        print("\(createRandomNumber)")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

