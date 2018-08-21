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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Actions
    @IBAction func signInWithEmailWasTapped(_ sender: Any) {
    }
    
    @IBAction func signInWithGoogleTapped(_ sender: Any) {
    }
    
}
