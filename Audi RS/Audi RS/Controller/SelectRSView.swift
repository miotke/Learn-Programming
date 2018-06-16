//
//  SelectRSView.swift
//  Audi RS
//
//  Created by Andrew Miotke on 6/14/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

protocol AudiRSGenerations {
    func rsGenerations(generationNumber: String, image: UIImage, description: String)
}

class SelectRSView: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Actions
    @IBAction func b4RS2(_ sender: Any) {
        print("b4 RS2")
    }
    
    @IBAction func b5RS4(_ sender: Any) {
        print("b5 RS4")
    }
    
    @IBAction func b7RS4(_ sender: Any) {
        print("b7 RS4")
    }
    
    @IBAction func b8RS4(_ sender: Any) {
        print("b8 RS4")
    }
    
    @IBAction func b9RS4(_ sender: Any) {
        print("b9 RS4")
    }
}

extension BaseView: AudiRSGenerations {
    func rsGenerations(generationNumber: String, image: UIImage, description: String) {
        generationLabel.text = generationNumber
        generationImage.image = image
        generationDescription.text = description
    }
    
    
}


