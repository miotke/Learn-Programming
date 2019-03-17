//
//  ViewController.swift
//  LgText
//
//  Created by Andrew Miotke on 3/16/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lgTextField: UITextField!
    @IBOutlet weak var controlBottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        self.view.backgroundColor = UIColor.black
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillShow(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)

    }
    
    @objc func keyboardWillShow(_ notification:Notification) {
        let userInfo:NSDictionary = (notification as NSNotification).userInfo! as NSDictionary
        let keyboardFrame:NSValue = userInfo.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue
        let keyboardRectangle = keyboardFrame.cgRectValue
        let keyboardHeight = keyboardRectangle.height
        // controlBottomConstraint outlet to the control you want to move up
        controlBottomConstraint.constant = keyboardHeight + 8
    }
}

