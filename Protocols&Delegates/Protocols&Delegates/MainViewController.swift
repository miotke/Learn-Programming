//
//  ViewController.swift
//  Protocols&Delegates
//
//  Created by Andrew Miotke on 8/19/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

protocol ChangeLabelDelegate {
    func didTapButton(title: String)
}

class MainViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        mainLabel.text = "Choose a button"
        mainLabel.textAlignment = .center
        
        button1.setTitle("Button 1", for: .normal)
        button2.setTitle("Button 2", for: .normal)
        button3.setTitle("Button 3", for: .normal)
        button4.setTitle("Button 4", for: .normal)
    }
    
    var setTitle = ChangeLabelDelegate!

    @IBAction func button1WasTapped(_ sender: Any) {
        print("button 1 was tapped")
        setTitle.didTapButton(title: "Button 1")
    }
    
    @IBAction func button2WasTapped(_ sender: Any) {
    }
    
    @IBAction func button3WasTapped(_ sender: Any) {
    }
    
    @IBAction func button4WasTapped(_ sender: Any) {
    }
}

extension DetailViewController: ChangeLabelDelegate {
    func didTapButton(title: String) {
        detailLabel.text = title
    }
}

