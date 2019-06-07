//
//  LoginView.swift
//  QR Code
//
//  Created by Andrew Miotke on 8/25/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

extension LoginViewController {
    
    func setupView() {
        loginLabel.text = "Sign in for rewards"
        loginLabel.textAlignment = .center
        loginLabel.font = UIFont(name: "Avenir Next", size: 20)
        
        signInWithEmail.setTitle("Sign in Email", for: .normal)
        signInWithEmail.titleLabel?.textAlignment = .center
        signInWithEmail.titleLabel?.font = UIFont(name: "Avenir Next", size: 20)
        signInWithEmail.setTitleColor(UIColor.white, for: .normal)
        signInWithEmail.backgroundColor = UIColor.black
        
        signInWithGoogle.setTitle("Sign in Google", for: .normal)
        signInWithGoogle.titleLabel?.textAlignment = .center
        signInWithGoogle.titleLabel?.font = UIFont(name: "Avenir Next", size: 20)
        signInWithGoogle.setTitleColor(UIColor.white, for: .normal)
        signInWithGoogle.backgroundColor = UIColor.blue
        
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.titleLabel?.textAlignment = .center
        cancelButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 20)
        cancelButton.setTitleColor(UIColor.white, for: .normal)
        cancelButton.backgroundColor = UIColor.red
    }
}
