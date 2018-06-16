//
//  ViewController.swift
//  Audi RS
//
//  Created by Andrew Miotke on 6/14/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

protocol RSSelectionDelegate {
    func selectRSModel(model: String, generation: String, description: String)
}

class BaseView: UIViewController {
    
    var chooseRSModel: RSSelectionDelegate!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SelectRSView: RSSelectionDelegate {
    func selectRSModel(model: String, generation: String, description: String) {
        
    }
    
    
}
