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
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
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
    
}
