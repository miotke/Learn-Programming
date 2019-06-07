//
//  QRCodeView.swift
//  QR Code
//
//  Created by Andrew Miotke on 8/25/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

extension QRCodeViewController {

    func setupView() {
        titleLabel.text = "Scan code at checkout"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: "Avenir Next", size: 20)
        
        QRCode.backgroundColor = UIColor.red
        
        explainationLabel.text = "Receive discounts with this QR code"
        explainationLabel.textAlignment = .center
        explainationLabel.font = UIFont(name: "Avenir Next", size: 20)
        
        toLoginView.setTitle("Log into account", for: .normal)
        toLoginView.titleLabel?.textAlignment = .center
        toLoginView.titleLabel?.font = UIFont(name: "Avenir Next", size: 20)
    }
}
