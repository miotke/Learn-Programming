//
//  ManualCollectionView.swift
//  Collection Views
//
//  Created by Andrew on 7/1/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class ManualCollectionView: UIViewController {

    // Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLabel()

        collectionView.delegate = self
        collectionView.dataSource = self
    }
  
    func setupLabel() {
        label.text = "Collection Views!"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next", size: 30)
    }
}
