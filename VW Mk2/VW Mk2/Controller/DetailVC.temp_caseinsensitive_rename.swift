//
//  ViewController.swift
//  VW Mk2
//
//  Created by Andrew Miotke on 6/30/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var generationLabel: UILabel!
    @IBOutlet weak var redStripeview: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var mk2Array = ["", "", "", ""]
    
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



