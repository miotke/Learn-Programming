//
//  CreditVC.swift
//  Dogs
//
//  Created by Andrew Miotke on 6/28/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import WebKit

class CreditVC: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var webView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTitleLabel()
    }

    func setupTitleLabel() {
        titleLabel.textAlignment = .center
        titleLabel.text = "Credt to Dog CEO"
        titleLabel.font = UIFont(name: "Verdana", size: 30)
    }

}
