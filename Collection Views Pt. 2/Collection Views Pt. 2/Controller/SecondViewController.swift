//
//  SecondViewController.swift
//  Collection Views Pt. 2
//
//  Created by Andrew Miotke on 7/10/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    // Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
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
    }
}
