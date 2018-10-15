//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Andrew Miotke on 10/14/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let magicEightBallOptions = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var displayedEightBall = 0
    
    // MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var askButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        getRandomEightBall()
    }
    
    func setupView() {
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            
        titleLabel.text = "Ask Me Anyting..."
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont(name: "Avenir Next", size: 30)
        
        imageView.image = UIImage(named: "ball1")
        
        askButton.setTitle("Ask", for: .normal)
        askButton.backgroundColor = UIColor.white
    }
    
    func getRandomEightBall() {
        displayedEightBall = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: magicEightBallOptions[displayedEightBall])
    }

    // MARK: Actions
    @IBAction func askButton(_ sender: Any) {
        getRandomEightBall()
    }
}

