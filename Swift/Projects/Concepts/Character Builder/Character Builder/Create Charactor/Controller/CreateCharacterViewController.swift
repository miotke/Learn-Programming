//
//  CreateCharacterViewController.swift
//  Character Builder
//
//  Created by Andrew Miotke on 1/5/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class CreateCharacterViewController: UIViewController {
    
    let colors = Colors()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

extension CreateCharacterViewController {
    func setupView() {
        self.view.backgroundColor = colors.createCharacterBlue
    }
}
