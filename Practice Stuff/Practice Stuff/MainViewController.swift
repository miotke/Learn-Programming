//
//  ViewController.swift
//  Practice Stuff
//
//  Created by Andrew Miotke on 12/6/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let buttons = Buttons()
    let labels = Labels()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtonViews()
        setupLabelViews()
    }

    func setupButtonViews() {
        self.view.backgroundColor = UIColor.black
        buttons.makeOvalButton()
        buttons.makeRectangleButton()
        view.addSubview(buttons)
    }
    
    func setupLabelViews() {
        labels.createWelcomeLabel()
        labels.createGoodbyeLabel()
        labels.createOtherLabel()
        view.addSubview(labels)
    }
}

