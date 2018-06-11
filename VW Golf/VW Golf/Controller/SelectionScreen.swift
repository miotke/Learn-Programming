//
//  SelectionScreen.swift
//  VW Golf
//
//  Created by Andrew on 6/10/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class SelectionScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mk1ButtonPressed(_ sender: Any) {
    }
    
    @IBAction func mk2ButtonPressed(_ sender: Any) {
    }
}

extension BaseScreen: SelectModelDelegate {
    func didTapChoice(image: UIImage, name: String, Color: UIColor) {
        carModelLabel = name
        carImage = image
    }
}
