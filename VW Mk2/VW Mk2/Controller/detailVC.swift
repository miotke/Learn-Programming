//
//  ViewController.swift
//  VW Mk2
//
//  Created by Andrew Miotke on 6/30/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class detailVC: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var generationLabel: UILabel!
    @IBOutlet weak var redStripeview: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var mk2Array = ["Motor", "Transmission", "Weight", ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialView()
        
        imageView.image = UIImage(named: "mk2_gti")!
        
        tableView.delegate = self
        tableView.dataSource = self
    }


    func setupInitialView() {
//        self.view.backgroundColor = UIColor.black
        generationLabel.text = "Mk2 Golf GTI"
        generationLabel.textAlignment = .center
        generationLabel.backgroundColor = UIColor.black
        generationLabel.textColor = UIColor.white
        generationLabel.font = UIFont(name: "Avenir Next", size: 30)
        redStripeview.backgroundColor = UIColor.red
    }
}

extension detailVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mk2Array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath)
        cell.textLabel?.text = mk2Array[indexPath.row]
        return cell
    }
}

