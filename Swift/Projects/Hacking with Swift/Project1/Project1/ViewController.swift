//
//  ViewController.swift
//  Project1
//
//  Created by Andrew Miotke on 12/16/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                
            }
        }
    }


}

