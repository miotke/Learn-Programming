//
//  ViewController.swift
//  Collection Views Pt. 2
//
//  Created by Andrew Miotke on 7/5/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

var reuseIdentifier = "cell"

class FirstViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var dismissButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFirstView()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func setupFirstView() {
        label.text = "Fist Collection View"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next", size: 30)
        label.backgroundColor = UIColor.black
        label.textColor = UIColor.orange
        
        view.backgroundColor = UIColor.black
        
        dismissButton.setTitle("Dismiss", for: .normal)
    }
    
    // Actions
    @IBAction func dismissButtonPressed(_ sender: Any) {
        dismissButtonPressed(self)
    }
}

extension FirstViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FirstCollectionViewCell
        cell.label.text = "CV Label 1"
        cell.label.textAlignment = .center
        cell.label.textColor = UIColor.white
        cell.backgroundColor = UIColor.blue
        return cell
    }
}

