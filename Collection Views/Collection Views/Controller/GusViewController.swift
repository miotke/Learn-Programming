//
//  GusViewController.swift
//  Collection Views
//
//  Created by Andrew on 7/1/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

private let reuseIdentifier = "gusHead"

class GusViewController: UIViewController {

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
        label.text = "Collection of More Gus!"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next", size: 30)
    }
}


extension GusViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 102
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! GusHeadCollectionViewCell
        cell.backgroundColor = UIColor.red
        cell.gusHeadView.image = UIImage(named: "gus-head-8")
        cell.gusLabel.text = "Gus!"
        cell.gusLabel.textAlignment = .center
        cell.gusLabel.font = UIFont(name: "Avenir Next", size: 18)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        let cell = collectionView.cellForItem(at: indexPath)
        if cell?.backgroundColor == UIColor.red {
            cell?.backgroundColor = UIColor.white
        } else {
            print("GUS!")
        }
        return true
    }
    
    
    
}
