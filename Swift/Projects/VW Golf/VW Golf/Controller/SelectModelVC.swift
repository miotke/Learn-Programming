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
    
    // Outlets
    @IBOutlet weak var selectModelLabel: UILabel!
    @IBOutlet weak var chooseGenerationButton: UIButton!
    
    var selectionDelegate: SelectModelDelegate!
    var generationNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        selectModelLabel.text = "VW GTI Generation"
    }

    // Actions
    @IBAction func mk1ButtonPressed(_ sender: Any) {
        print("MK1")
        selectionDelegate?.didTapChoice(image: UIImage(named:"mk1_gti")!, name: "Mk1 GTI", description: GenerationDetail.mk1.rawValue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk2ButtonPressed(_ sender: Any) {
        print("MK2")
        selectionDelegate?.didTapChoice(image: UIImage(named: "mk2_gti")!, name: "Mk2 GTI", description: GenerationDetail.mk2.rawValue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk3ButtonPressed(_ sender: Any) {
        print("MK3")
        selectionDelegate.didTapChoice(image: UIImage(named: "mk3_gti")!, name: "Mk3 GTI", description: GenerationDetail.mk3.rawValue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk4ButtonPressed(_ sender: Any) {
        print("MK4")
        selectionDelegate.didTapChoice(image: UIImage(named: "mk4_gti")!, name: "Mk4 GTI", description: GenerationDetail.mk4.rawValue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk5ButtonPressed(_ sender: Any) {
        print("MK5")
        selectionDelegate.didTapChoice(image: UIImage(named:"mk5_gti")!, name: "Mk5 GTI", description: GenerationDetail.mk5.rawValue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk6ButtonPressed(_ sender: Any) {
        print("MK6")
        selectionDelegate.didTapChoice(image: UIImage(named: "mk6_gti")!, name: "Mk6 GTI", description: GenerationDetail.mk6.rawValue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func mk7ButtonPressed(_ sender: Any) {
        print("MK7")
        selectionDelegate.didTapChoice(image: UIImage(named: "mk7_gti")!, name: "Mk7 GTI", description: GenerationDetail.mk7.rawValue)
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
