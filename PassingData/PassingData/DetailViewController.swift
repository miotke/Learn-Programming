//
//  DetailViewController.swift
//  PassingData
//
//  Created by Andrew Miotke on 9/28/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.setTitle("Back", for: .normal)
        detailLabel.textAlignment = .center
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
