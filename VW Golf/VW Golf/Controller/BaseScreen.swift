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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Actions
    @IBAction func chooseModelButtonPressed(_ sender: Any) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
        
    }
}

