//
//  DetailViewController.swift
//  Protocols&Delegates
//
//  Created by Andrew Miotke on 8/19/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // Outlets
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var backToMainVCButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.textAlignment = .center
        
        // Styling only in viewDidLoad because it was faster than writing a full method
        backToMainVCButton.setTitle("Dismiss", for: .normal)
        backToMainVCButton.titleLabel?.textAlignment = .center
    }

    
    @IBAction func backToMainVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
