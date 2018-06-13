//
//  SelectionScreen.swift
//  VW Golf
//
//  Created by Andrew on 6/10/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

protocol SelectModelDelegate {
    func didTapChoice(image: UIImage, name: String, description: String)
}

class SelectionScreen: UIViewController {
    
    var selectionDelegate: SelectModelDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mk1ButtonPressed(_ sender: Any) {
        print("MK1")
//        let modelVC = storyboard?.instantiateViewController(withIdentifier: "BaseScreen") as! BaseScreen
        selectionDelegate?.didTapChoice(image: UIImage(named:"mk1_gti")!, name: "Mk1", description: "MK1, MK1, MK1, MK1, MK1, MK1, MK1")
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func mk2ButtonPressed(_ sender: Any) {
        print("MK2")
//        let modelVC = storyboard?.instantiateViewController(withIdentifier: "BaseScreen") as! BaseScreen
        selectionDelegate?.didTapChoice(image: UIImage(named: "mk2_gti")!, name: "MK2", description: "MK2, MK2, MK2, MK2, MK2, MK2, MK2")
        dismiss(animated: true, completion: nil)
    }
}

extension BaseScreen: SelectModelDelegate {
    func didTapChoice(image: UIImage, name: String, description: String) {
        carModelLabel.text = name
        carImage.image = image
        carDescription.text = description
    }
}
