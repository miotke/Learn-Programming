//
//  ViewController.swift
//  Collection Views Pt. 2
//
//  Created by Andrew Miotke on 7/5/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFirstView()
    }

    func setupFirstView() {
        label.text = "Fist Collection View"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next", size: 30)
        label.backgroundColor = UIColor.black
        label.textColor = UIColor.orange
        
        view.backgroundColor = UIColor.black
    }
}

extension FirstViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

