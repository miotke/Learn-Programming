//
//  Buttons.swift
//  Practice Stuff
//
//  Created by Andrew Miotke on 12/6/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class Buttons: UIButton {

    func makeOvalButton() {
        // Oval button
        let ovalButton = UIButton(frame: CGRect(x: 200, y: 300, width: 150, height: 40))
        ovalButton.layer.cornerRadius = ovalButton.frame.height / 2
        ovalButton.setTitle("Oval Button", for: .normal)
        ovalButton.backgroundColor = UIColor.purple
        ovalButton.addTarget(self, action: #selector(createAction), for: .touchUpInside)
        addSubview(ovalButton)
    }
    
    func makeRectangleButton() {
        // Rectangle button
        let rectangleButton = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        rectangleButton.setTitle("Rectangle Button", for: .normal)
        rectangleButton.backgroundColor = UIColor.red
        addSubview(rectangleButton)
    }
    
    @objc func createAction() {
        print("Button Tapped")
    }
}


