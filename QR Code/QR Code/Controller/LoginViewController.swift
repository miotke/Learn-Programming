//
//  LoginViewController.swift
//  QR Code
//
//  Created by Andrew Miotke on 8/20/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // Outlet
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var signInWithEmail: UIButton!
    @IBOutlet weak var signInWithGoogle: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        loginLabel.text = "Sign in for rewards"
        loginLabel.textAlignment = .center
        loginLabel.font = UIFont(name: "Avenir Next", size: 20)
        
        signInWithEmail.setTitle("Sign in Email", for: .normal)
        signInWithEmail.titleLabel?.textAlignment = .center
        signInWithEmail.titleLabel?.font = UIFont(name: "Avenir Next", size: 20)
        
        signInWithGoogle.setTitle("Sign in Google", for: .normal)
        signInWithGoogle.titleLabel?.textAlignment = .center
        signInWithGoogle.titleLabel?.font = UIFont(name: "Avenir Next", size: 20)
        
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.titleLabel?.textAlignment = .center
        cancelButton.titleLabel?.font = UIFont(name: "Avenir Next", size: 20)
        cancelButton.titleLabel?.textColor = UIColor.red
    }
    
    // Actions
    @IBAction func signInWithEmailWasTapped(_ sender: Any) {
    }
    
    @IBAction func signInWithGoogleTapped(_ sender: Any) {
    }
    
    @IBAction func cancelButtonWasTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
