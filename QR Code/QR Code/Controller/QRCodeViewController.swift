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

    func setupView() {
        titleLabel.text = "Scan code at checkout"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "Avenir Next", size: 20)
        
        QRCode.backgroundColor = UIColor.red
        
        explainationLabel.text = "The above QR code will allow you to receive various discounts at checkout."
        explainationLabel.textAlignment = .center
        explainationLabel.font = UIFont(name: "Avenir Next", size: 20)
        
        toLoginView.setTitle("Log into account", for: .normal)
        toLoginView.titleLabel?.textAlignment = .center
        toLoginView.titleLabel?.font = UIFont(name: "Avenir Next", size: 20)
    }
    
    // Actions
    @IBAction func toLoginViewButtonWasTapped(_ sender: Any) {
        print("Tapped")
    }
    
}

