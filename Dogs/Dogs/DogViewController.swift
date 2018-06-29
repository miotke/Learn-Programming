//
//  ViewController.swift
//  Dogs
//
//  Created by Andrew Miotke on 6/28/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

final class DogViewController: UICollectionViewController {
    
    var dogArray = ["dog1", "dog2", "dog3"]

    // MARK: Properties
    fileprivate let reuseIdentifier = "DogCell"
    fileprivate let sectionInset = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    fileprivate var dog = Dog()
    fileprivate let itemsPerRow: CGFloat = 3

    @IBOutlet weak var titleLabel: UILabel!
    
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


// MARK: UICollectionViewDataSource
extension DogViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dogArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! DogCell
        cell.backgroundColor = UIColor.black
        cell.imageView.image = UIImage(named: "gus")
        return cell
    }
}
