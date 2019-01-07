//
//  AddCannabisViewController.swift
//  Seed
//
//  Created by Andrew Miotke on 1/6/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class AddCannabisViewController: UIViewController {
    
    let placeholderLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationController()
        placeholderTitle()
    }
    
    func placeholderTitle() {
        placeholderLabel.text = "Add cannabis entry here"
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

// MARK: Extensions - Navigation Controller
extension AddCannabisViewController {
    
    func setupNavigationController() {
        self.navigationItem.title = "Add Cannabis Activity"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveCannabisEntry))
    }
    
    @objc func saveCannabisEntry() {
        _ = navigationController?.popViewController(animated: true)
    }
}
