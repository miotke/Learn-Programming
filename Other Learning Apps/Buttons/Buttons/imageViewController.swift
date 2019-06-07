//
//  imageViewController.swift
//  Buttons
//
//  Created by Andrew Miotke on 2/6/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.brown
        
        let gusHead = UIImage(named: "gus-head")
        let imageView = UIImageView(image: gusHead)
        imageView.frame = CGRect(x: 30, y: 30, width: 100, height: 100)
        view.addSubview(imageView)
        
        let rocket = UIImage(named: "rocket")
        let pictureView = UIImageView(image: rocket)
        pictureView.frame = CGRect(x: 160, y: 30, width: 200, height: 200)
        view.addSubview(pictureView)
        
        let dog = UIImage(named: "dog")
        let dogView = UIImageView(image: dog)
        dogView.frame = CGRect(x: 130, y: 90, width: 200, height: 200)
        view.addSubview(dogView)
        
        let bubble = UIImage(named: "speech-bubble")
        let bubbleView = UIImageView(image: bubble)
        bubbleView.frame = CGRect(x: 190, y: 90, width: 200, height: 200)
        view.addSubview(bubbleView)
    }
}
