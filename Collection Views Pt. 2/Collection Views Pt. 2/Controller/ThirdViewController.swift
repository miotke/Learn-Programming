//
//  ThirdViewController.swift
//  Collection Views Pt. 2
//
//  Created by Andrew on 7/15/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

var cellID = "cell"

class ThirdViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var dismissButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var gusLabel = ["Gus 1", "Gus 2", "Gus 3", "Gus 4", "Gus 5", "Gus 6", "Gus 7", "Gus 8", "Gus 9", "Gus 10", "Gus 1", "Gus 2", "Gus 3", "Gus 4", "Gus 5", "Gus 6", "Gus 7", "Gus 8", "Gus 9", "Gus 10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setupView() {
        self.view.backgroundColor = UIColor.black
        
        label.text = "Collection and Table Views #3"
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.backgroundColor = UIColor.black
        label.font = UIFont(name: "Avenir Next", size: 25)
        collectionView!.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    // Actions
    @IBAction func dismissButtonWasPressed(_ sender: Any) {
    }
    
}

// Collection View
extension ThirdViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gusLabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! ThirdCollectionViewCell
        collectionCell.image.image = UIImage(named: "gus-head-7")
        collectionCell.label.text = gusLabel[indexPath.row]
        return collectionCell
    }
    
    
}

// Table View
extension ThirdViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gusLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        tableCell.textLabel?.text = gusLabel[indexPath.row]
        return tableCell
    }
    
    
}
