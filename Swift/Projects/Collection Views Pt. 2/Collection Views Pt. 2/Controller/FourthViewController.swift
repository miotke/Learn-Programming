//
//  FourthViewController.swift
//  Collection Views Pt. 2
//
//  Created by Andrew Miotke on 7/17/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

let cvID = "cell"

class FourthViewController: UIViewController {

    // Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var dismissButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func setupView() {
        label.text = "Fourth Collection View"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next", size: 30)
        label.backgroundColor = UIColor.brown
        label.textColor = UIColor.green
        
        dismissButton.setTitle("Dismiss", for: .normal)
    }
    
    // Actions
    @IBAction func dismissButtonWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}


extension FourthViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cvID, for: indexPath) as! FourthCollectionViewCell
        collectionViewCell.imageView.image = UIImage(named: "gus-head-7")
        return collectionViewCell
    }
    
    
}
