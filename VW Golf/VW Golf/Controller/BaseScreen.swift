//
//  ViewController.swift
//  VW Golf
//
//  Created by Andrew on 6/10/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class BaseScreen: UIViewController {

    // Outlets
    @IBOutlet weak var carModelLabel: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var carDescription: UITextView!
    @IBOutlet weak var chooseModelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setInitialView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setInitialView() {
        carModelLabel.text = "Volkswagen"
        carImage.image = UIImage(named: "mk2_gti")
        carDescription.text = "Click the Choose Model button to view a new model"
        chooseModelButton.setTitle("Choose Model", for: .normal)
    }

    // Actions
    @IBAction func chooseModelButtonPressed(_ sender: Any) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
        
    }
}

