//
//  RenoViewController.swift
//  Collection Views
//
//  Created by Andrew Miotke on 7/5/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

var reuseIdentifier = "RenoCell"

class RenoViewController: UIViewController {
    
    //Outlet
    @IBOutlet weak var renoLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    func setupView() {
        renoLabel.text = "Reno Collection View"
        renoLabel.textAlignment = .center
        renoLabel.textColor =  UIColor.white
        renoLabel.backgroundColor = UIColor.black
        renoLabel.font = UIFont(name: "Avenir Next", size: 30)
    }
}
