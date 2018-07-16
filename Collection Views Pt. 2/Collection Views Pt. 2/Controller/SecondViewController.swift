//
//  SecondViewController.swift
//  Collection Views Pt. 2
//
//  Created by Andrew Miotke on 7/10/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

var tableCellID = "cell"
var collectionCellID = "cell"

class SecondViewController: UIViewController {
    
    var gusLabel = ["Gus 1", "Gus 2", "Gus 3", "Gus 4", "Gus 5", "Gus 6", "Gus 7", "Gus 8", "Gus 9", "Gus 10]
    
    // Outlets
    @IBOutlet weak var label: UILabel!
        @IBOutlet weak var collectionView: UICollectionView!
        @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupView() {
        self.view.backgroundColor = UIColor.black
        
        label.text = "Collection and Table Views"
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.backgroundColor = UIColor.black
        label.font = UIFont(name: "Avenir Next", size: 25)
        collectionView!.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}

extension SecondViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionCellID, for: indexPath) as! SecondCollectionViewCell
        collectionCell.label.text = "Collection Label!"
        collectionCell.gusHeadImage.image = UIImage(named: "gus-head-8")
        
        return collectionCell
    }
    
    
}


extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gusLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: tableCellID, for: indexPath)
        tableCell.textLabel?.text = gusLabel[indexPath.row]
        
        return tableCell
    }
}

