//
//  ViewController.swift
//  gus-app
//
//  Created by Andrew Miotke on 12/2/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func gusHeads(_ sender: Any) {
        performSegue(withIdentifier: "ToGusHeads", sender: self)
        print("Gus Heads button pressed")
        
    }
    
    @IBAction func shareGus(_ sender: UIButton) {
    
    }
    
    @IBAction func gusGame(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "Gus App!"
    }
    
    func buttonColor() {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

