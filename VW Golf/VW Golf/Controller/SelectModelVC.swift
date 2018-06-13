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

class SelectModelVC: UIViewController {
    
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
        selectionDelegate?.didTapChoice(image: UIImage(named:"mk1_gti")!, name: "Mk1 GTI", description: "Mk1 GTI")
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func mk2ButtonPressed(_ sender: Any) {
        print("MK2")
        selectionDelegate?.didTapChoice(image: UIImage(named: "mk2_gti")!, name: "Mk2 GTI", description: "Mk2 GTI")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk3ButtonPressed(_ sender: Any) {
        print("MK3")
        selectionDelegate.didTapChoice(image: UIImage(named: "mk2_gti")!, name: "Mk3 GTI", description: "Mk3 GTI")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk4ButtonPressed(_ sender: Any) {
        print("MK4")
        selectionDelegate.didTapChoice(image: UIImage(named: "mk1_gti")!, name: "Mk4 GTI", description: "Mk4 GTI")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk5ButtonPressed(_ sender: Any) {
        print("MK5")
        selectionDelegate.didTapChoice(image: UIImage(named:"mk2_gti")!, name: "Mk5 GTI", description: "Mk5 GTI")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk6ButtonPressed(_ sender: Any) {
        print("MK6")
        selectionDelegate.didTapChoice(image: UIImage(named: "mk2_gti")!, name: "Mk6 GTI", description: "Mk6 GTI")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk7ButtonPressed(_ sender: Any) {
        print("MK7")
        selectionDelegate.didTapChoice(image: UIImage(named: "mk1_gti")!, name: "Mk7 GTI", description: "Mk7 GTI")
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
