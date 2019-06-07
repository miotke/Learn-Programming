 //
//  ManualCollectionViewExtension.swift
//  Collection Views
//
//  Created by Andrew on 7/1/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit
 
 private let reuseIdentifier = "Cell"
 
 extension ManualCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.green
        return cell
    }
 }
