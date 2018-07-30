//
//  ViewController.swift
//  Furniture
//
//  Created by Andrew Miotke on 7/30/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    // Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var googleLoginButton: UIButton!
    @IBOutlet weak var githubLoginButton: UIButton!
    @IBOutlet weak var emailLoginButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupLoginView()
    }
    
    func setupLoginView() {
        backgroundImage.image = UIImage(named: "background")
        
        titleLabel.text = "Furniture"
        titleLabel.textAlignment = .center
        titleLabel.textColor = #colorLiteral(red: 1, green: 0, blue: 0.6393576264, alpha: 1)
//        titleLabel.textColor = UIColor(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        titleLabel.font = UIFont(name: "Avenir Next", size: 45)
        
        googleLoginButton.setTitle("Login with Google", for: .normal)
        googleLoginButton.setTitleColor(UIColor.white, for: .normal)
        googleLoginButton.contentHorizontalAlignment = .center
        googleLoginButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 25)
        
        githubLoginButton.setTitle("Login with GitHub", for: .normal)
        githubLoginButton.setTitleColor(UIColor(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1), for: .normal)
        githubLoginButton.contentHorizontalAlignment = .center
        githubLoginButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 25)
        
        emailLoginButton.setTitle("Login with Email", for: .normal)
        emailLoginButton.setTitleColor(UIColor.orange, for: .normal)
        emailLoginButton.contentHorizontalAlignment = .center
        emailLoginButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 25)
        
    }

}

