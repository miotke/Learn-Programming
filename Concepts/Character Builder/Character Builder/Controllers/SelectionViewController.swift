//
//  ViewController.swift
//  Character Builder
//
//  Created by Andrew Miotke on 1/1/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var selectionTitle: UILabel!
    @IBOutlet weak var selectionButtonContainerView: UIView!
    @IBOutlet weak var createCharacterButton: UIButton!
    @IBOutlet weak var selectCharacterButton: UIButton!
    
    
    
    // MARK: Constants
    let colors = Colors()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = colors.black
    }

    @IBAction func createCharacterButtonTapped(_ sender: Any) {
    }
    
    @IBAction func selectCharacterButtonTapped(_ sender: Any) {
    }
}

