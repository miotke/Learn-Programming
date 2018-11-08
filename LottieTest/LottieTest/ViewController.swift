//
//  ViewController.swift
//  LottieTest
//
//  Created by Andrew Miotke on 11/7/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var keyboardView: LOTAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        keyboardAnimation()
    }

    func setupView() {
        view.backgroundColor = UIColor.black
        keyboardView.backgroundColor = UIColor.black
    }
    
    func keyboardAnimation() {
        keyboardView.setAnimation(named: "domino_effect")
        keyboardView.play()
    }
}

