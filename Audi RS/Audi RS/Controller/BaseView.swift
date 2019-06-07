//
//  ViewController.swift
//  Audi RS
//
//  Created by Andrew Miotke on 6/14/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class BaseView: UIViewController {
    
    // Outlets
    @IBOutlet weak var generationLabel: UILabel!
    @IBOutlet weak var generationImage: UIImageView!
    @IBOutlet weak var generationDescription: UITextView!
    @IBOutlet weak var chooseGenerationButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialView()
    }
    
    func setupInitialView() {
        generationLabel.text = "Audi //RS"
        generationImage.image = UIImage(named: "rs_logo")
        generationDescription.text = "Choose an Audi //RS generation"
        chooseGenerationButton.setTitle("Choose //RS Generation", for: .normal)
    }
    
    // Actions
    @IBAction func chooseGenerationButton(_ sender: Any) {
      let rsSelectionVC = storyboard?.instantiateViewController(withIdentifier: "GenerationVC") as! SelectRSView
      rsSelectionVC.audiGenerationDelegate = self
      present(rsSelectionVC, animated: true, completion: nil)
    }
}


