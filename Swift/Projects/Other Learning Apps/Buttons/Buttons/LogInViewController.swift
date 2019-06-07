//
//  MoreButtonsViewController.swift
//  Buttons
//
//  Created by Andrew Miotke on 2/9/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black
        
        
        
        let usernameTextField = UITextField(frame: CGRect(x: 50, y: 400, width: 300, height: 40))
        usernameTextField.backgroundColor = UIColor.darkGray
        usernameTextField.textColor = UIColor.white
        usernameTextField.placeholder = "Username"
        view.addSubview(usernameTextField)
        
        let passwordTextField = UITextField(frame: CGRect(x: 50, y: 450, width: 300, height: 40))
        passwordTextField.backgroundColor = UIColor.darkGray
        passwordTextField.textColor = UIColor.white
        passwordTextField.placeholder = "Password"
        view.addSubview(passwordTextField)
        
        let logInButton = UIButton(frame: CGRect(x: 50, y: 600, width: 300, height: 40))
        logInButton.layer.cornerRadius = logInButton.frame.height / 2
        logInButton.backgroundColor = UIColor.darkGray
        logInButton.setTitle("Log In", for: .normal)
        logInButton.addTarget(self, action: #selector(logInButtonAction), for: .touchUpInside)
        view.addSubview(logInButton)
    }
    
    @objc func logInButtonAction() {
        print("log in button pressed 👍")
    }
}
