//
//  HideKeyboard.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 1/5/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
