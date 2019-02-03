//
//  Labels.swift
//  Practice Stuff
//
//  Created by Andrew Miotke on 12/6/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class Labels: UILabel {

    func createWelcomeLabel() {
        let welcomeLabel = UILabel(frame: CGRect(x: 100, y: 500, width: 200, height: 50))
        welcomeLabel.text = "Welcome Label"
        welcomeLabel.textAlignment = .center
        welcomeLabel.backgroundColor = UIColor.white
        addSubview(welcomeLabel)
    }
    
    func createGoodbyeLabel() {
        let goodbyeLabel = UILabel(frame: CGRect(x: 200, y: 600, width: 200, height: 50))
        goodbyeLabel.text = "Good Bye"
        goodbyeLabel.textColor = UIColor.black
        goodbyeLabel.textAlignment = .center
        goodbyeLabel.backgroundColor = UIColor.purple
        addSubview(goodbyeLabel)
    }
    
    func createOtherLabel() {
        let otherLabel = UILabel(frame: CGRect(x: 100, y: 650, width: 200, height: 50))
        otherLabel.text = "Other Label"
        otherLabel.backgroundColor = UIColor.blue
        addSubview(otherLabel)
    }

}
