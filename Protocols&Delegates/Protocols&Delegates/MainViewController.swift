//
//  ViewController.swift
//  Protocols&Delegates
//
//  Created by Andrew Miotke on 8/19/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

protocol ChangeLabelDelegate {
    func didTapButton(title: String)
}

class MainViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        mainLabel.text = "Choose a button"
        mainLabel.textAlignment = .center
        
        button1.setTitle("Button 1", for: .normal)
        button2.setTitle("Button 2", for: .normal)
        button3.setTitle("Button 3", for: .normal)
        button4.setTitle("Button 4", for: .normal)
    }
    
    var setTitleDelegate: ChangeLabelDelegate!
    
    func moveToDetailVC() {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
//        detailVC.setTitleDelegate = self as? ChangeLabelDelegate
        present(detailVC, animated: true, completion: nil)
    }

    @IBAction func button1WasTapped(_ sender: Any) {
        print("button 1 was tapped")
        setTitleDelegate?.didTapButton(title: "Button 1")
        moveToDetailVC()
    }
    
    @IBAction func button2WasTapped(_ sender: Any) {
        print("Button 2 was tapped")
        moveToDetailVC()
    }
    
    @IBAction func button3WasTapped(_ sender: Any) {
        print("button 3 was tapped")
        moveToDetailVC()
    }
    
    @IBAction func button4WasTapped(_ sender: Any) {
        print("button 4 was tapped")
        moveToDetailVC()
    }
}

extension DetailViewController: ChangeLabelDelegate {
    func didTapButton(title: String) {
        detailLabel.text = title
    }
}

