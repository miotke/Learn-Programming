//
//  PopVC.swift
//  pixel-city
//
//  Created by Andrew on 5/28/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    // Outlets
    @IBOutlet weak var popImageView: UIImageView!
    @IBOutlet weak var imageTitle: UILabel!
    
    var passedImage: UIImage!
    
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        popImageView.image = passedImage
        addDoubleTap()
        
        imageTitle.text = ""
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
  @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

    

}
