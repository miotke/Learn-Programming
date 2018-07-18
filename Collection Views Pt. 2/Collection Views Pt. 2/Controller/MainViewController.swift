//
//  MainViewController.swift
//  Collection Views Pt. 2
//
//  Created by Andrew Miotke on 7/17/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var cvButton1: UIButton!
    @IBOutlet weak var cvButton2: UIButton!
    @IBOutlet weak var cvButton3: UIButton!
    @IBOutlet weak var cvButton4: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    func setupView() {
        label.text = "Choose a Collection View"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next", size: 30)
        label.backgroundColor = UIColor.black
        label.textColor = UIColor.white

        cvButton1.setTitle("CV 1", for: .normal)
        cvButton1.backgroundColor = UIColor.black
        cvButton1.setTitleColor(UIColor.white, for: .normal)

        cvButton2.setTitle("CV 2", for: .normal)
        cvButton2.backgroundColor = UIColor.black
        cvButton2.setTitleColor(UIColor.white, for: .normal)

        cvButton3.setTitle("CV 3", for: .normal)
        cvButton3.backgroundColor = UIColor.black
        cvButton3.setTitleColor(UIColor.white, for: .normal)

        cvButton4.setTitle("CV 4", for: .normal)
        cvButton4.backgroundColor = UIColor.black
        cvButton4.setTitleColor(UIColor.white, for: .normal)


    }

    // Actions
    @IBAction func cvButton1WasPressed(_ sender: Any) {
    }

    @IBAction func cvButton2WasPressed(_ sender: Any) {
    }

    @IBAction func cvButton3WasPressed(_ sender: Any) {
    }

    @IBAction func cvButton4WasPressed(_ sender: Any) {
    }

}
