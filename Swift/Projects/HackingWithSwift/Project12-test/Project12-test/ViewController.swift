//
//  ViewController.swift
//  Project12-test
//
//  Created by Andrew Miotke on 9/29/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    defaults.set(25, forKey: "Age")
    defaults.set(true, forKey: "UseTouchID")
    defaults.set(CGFloat.pi, forKey: "Pi")
    defaults.set("Paul Hudson", forKey: "Name")
    defaults.set(Date(), forKey: "LastRun")
    
    let array = ["Hello", "World"]
    defaults.set(array, forKey: "SavedArray")
    
    let dict = ["Name": "Paul", "Country": "Uk"]
    defaults.set(array, forKey: "SavedDict")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

