//
//  ViewController.swift
//  Dogs
//
//  Created by Andrew Miotke on 6/28/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTitleLabel()
        
    }

    func setupTitleLabel() {
        titleLabel.textAlignment = .center
        titleLabel.text = "Dog CEO - Dog API"
        titleLabel.font = UIFont(name: "Verdana", size: 30)
    }

    
}

