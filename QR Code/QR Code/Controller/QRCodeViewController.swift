//
//  QRCodeViewController.swift
//  QR Code
//
//  Created by Andrew Miotke on 8/20/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class QRCodeViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var QRCode: UIView!
    @IBOutlet weak var explainationLabel: UILabel!
    @IBOutlet weak var toLoginView: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

    // Actions
    @IBAction func toLoginViewButtonWasTapped(_ sender: Any) {
        print("Tapped")
    }
    
}

