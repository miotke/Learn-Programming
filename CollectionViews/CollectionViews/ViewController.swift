//
//  ViewController.swift
//  CollectionViews
//
//  Created by Andrew Miotke on 6/26/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var viewLabel: UILabel!
    
    
    var myArray = ["Label 0", "Label 1", "Label 2", "Label 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewLabel.text = "Collection Views"
        viewLabel.textAlignment = .center
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath)
        
        return cell
    }
}

