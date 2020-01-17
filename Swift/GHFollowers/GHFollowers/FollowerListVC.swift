//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Andrew Miotke on 1/17/20.
//  Copyright © 2020 andrewmiotke. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
