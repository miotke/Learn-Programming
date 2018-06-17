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
    @IBOutlet weak var generationLabelText: UILabel!
    @IBOutlet weak var b4RS2: UIButton!
    @IBOutlet weak var b5RS4: UIButton!
    @IBOutlet weak var b7RS4: UIButton!
    @IBOutlet weak var b8RS4: UIButton!
    @IBOutlet weak var b9RS4: UIButton!
    
    
    var audiGenerationDelegate: AudiRSGenerations!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generationLabelText.text = "Audi RS"
        setButtonTitle()
        
    }
    
    func setButtonTitle() {
        b4RS2.setTitle("b4 RS2", for: .normal)
        b5RS4.setTitle("b5 RS4", for: .normal)
        b7RS4.setTitle("b7 RS4", for: .normal)
        b8RS4.setTitle("b8 RS4", for: .normal)
        b9RS4.setTitle("b9 RS4", for: .normal)
    }
    
    // Actions
    @IBAction func b4RS2(_ sender: Any) {
        audiGenerationDelegate.rsGenerations(generationNumber: "b4 RS2", image: UIImage(named: "b4_rs2")!, description: "Audi b4 RS2")
        dismiss(animated: true, completion: nil)
        print("b4 RS2")
    }
    
    @IBAction func b5RS4(_ sender: Any) {
        audiGenerationDelegate.rsGenerations(generationNumber: "b5 RS4", image: UIImage(named: "b5_rs4")!, description: "Audi b5 RS4")
        dismiss(animated: true, completion: nil)
        print("b5 RS4")
    }
    
    @IBAction func b7RS4(_ sender: Any) {
        audiGenerationDelegate.rsGenerations(generationNumber: "b7 RS4", image: UIImage(named: "b7_rs4")!, description: "Audi b7 RS4")
        dismiss(animated: true, completion: nil)
        print("b7 RS4")
    }
    
    @IBAction func b8RS4(_ sender: Any) {
        audiGenerationDelegate.rsGenerations(generationNumber: "b8 RS4", image: UIImage(named: "b8_rs4")!, description: "Audi b8 RS4")
        dismiss(animated: true, completion: nil)
        print("b8 RS4")
    }
    
    @IBAction func b9RS4(_ sender: Any) {
        audiGenerationDelegate.rsGenerations(generationNumber: "b9 RS4", image: UIImage(named: "b9_rs4")!, description: "Audi b9 RS4")
        dismiss(animated: true, completion: nil)
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


