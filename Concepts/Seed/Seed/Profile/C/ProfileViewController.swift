//
//  ProfileViewController.swift
//  Seed
//
//  Created by Andrew Miotke on 1/6/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let placeholderLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        placeholderTitle()
    }
    
    func placeholderTitle() {
        placeholderLabel.text = "Profile data will go here along with log in option"
        placeholderLabel.textColor = UIColor.black
        placeholderLabel.textAlignment = .center
        view.addSubview(placeholderLabel)
        placeholderTitleConstraints()
    }
    
    func placeholderTitleConstraints() {
        placeholderLabel.translatesAutoresizingMaskIntoConstraints = false
        placeholderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        placeholderLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        placeholderLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
