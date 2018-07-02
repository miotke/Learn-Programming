//
//  ImageCollectionView.swift
//  Collection Views
//
//  Created by Andrew on 7/1/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

private let reuseIdentifier = "imageCell"

class ImageCollectionView: UIViewController {

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


extension ImageCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.black
        return cell
    }
    
    
}
