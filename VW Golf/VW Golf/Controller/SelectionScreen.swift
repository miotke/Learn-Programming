//
//  SelectionScreen.swift
//  VW Golf
//
//  Created by Andrew on 6/10/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

protocol SelectModelDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionScreen: UIViewController {
    
    var selectionDelegate: SelectModelDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mk1ButtonPressed(_ sender: Any) {
        print("MK1")
        let modelVC = storyboard?.instantiateViewController(withIdentifier: "BaseScreen") as! BaseScreen
        selectionDelegate?.didTapChoice(image: UIImage(named:"mk1_gti")!, name: "Mk1", color: .black)
        present(modelVC, animated: true, completion: nil)
        
    }
    
    @IBAction func mk2ButtonPressed(_ sender: Any) {
        print("MK2")
        let modelVC = storyboard?.instantiateViewController(withIdentifier: "BaseScreen") as! BaseScreen
        present(modelVC, animated: true, completion: nil)
    }
    
    // ADD EXTENSION
    
}

extension BaseScreen: SelectModelDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        carModelLabel.text = name
        carImage.image = image
        carDescription.backgroundColor = color
        
    }
    
    
}
