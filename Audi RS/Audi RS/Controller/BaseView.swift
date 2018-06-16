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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Actions
    @IBAction func chooseGenerationButton(_ sender: Any) {
      let rsSelectionVC = storyboard?.instantiateViewController(withIdentifier: "GenerationVC") as! SelectRSView
      rsSelectionVC.audiGenerationDelegate = self
      present(rsSelectionVC, animated: true, completion: nil)
    }
}


