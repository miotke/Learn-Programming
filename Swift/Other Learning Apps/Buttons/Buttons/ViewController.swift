//
//  ViewController.swift
//  Buttons
//
//  Created by Andrew Miotke on 1/23/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
//
//        let headerView = UIView()
//        headerView.backgroundColor = .red
//        self.view.addSubview(headerView)
        
        // red round button
        let redRoundPlusButton = UIButton(frame: CGRect(x: 30, y: 30, width: 75, height: 75))
        redRoundPlusButton.layer.cornerRadius = 0.5 * redRoundPlusButton.bounds.size.width
        redRoundPlusButton.backgroundColor = UIColor.red
        redRoundPlusButton.setImage(UIImage(named: "plus-button"), for: .normal)
        redRoundPlusButton.addTarget(self, action: #selector(redRoundButton), for: .touchUpInside)
        view.addSubview(redRoundPlusButton)
        
        // blue square button
        let blueSquareTextButton = UIButton(frame: CGRect(x: 30, y: 130, width: 75, height: 75))
        blueSquareTextButton.backgroundColor = UIColor.blue
        blueSquareTextButton.setTitle("Button", for: .normal)
        blueSquareTextButton.addTarget(self, action: #selector(blueSquareButton), for: .touchUpInside)
        view.addSubview(blueSquareTextButton)
        
        // gray rectangle button
        let grayRectangleButton = UIButton(frame: CGRect(x: 30, y: 230, width: 120, height: 75))
        grayRectangleButton.backgroundColor = UIColor.gray
        grayRectangleButton.setTitle("Login button", for: .normal)
        grayRectangleButton.addTarget(self, action: #selector(rectangleButton), for: .touchUpInside)
        view.addSubview(grayRectangleButton)
        
        // calendar button
        let calendarButton = UIButton(frame: CGRect(x: 30, y: 330, width: 100, height: 100))
        calendarButton.backgroundColor = UIColor.darkGray
        calendarButton.setBackgroundImage(UIImage(named: "calendar-button"), for: .normal)
        calendarButton.addTarget(self, action: #selector(calButton), for: .touchUpInside)
        view.addSubview(calendarButton)
        
        // oval button
        let ovalButton = UIButton(frame: CGRect(x: 190, y: 300, width: 160, height: 40))
        ovalButton.layer.cornerRadius = ovalButton.frame.height / 2
        ovalButton.setTitle("Oval Button", for: .normal)
        ovalButton.backgroundColor = UIColor.blue
        ovalButton.addTarget(self, action: #selector(blueOvalButton), for: .touchUpInside)
        view.addSubview(ovalButton)
        
        // Green oval button
        let greenOvalButton = UIButton(frame: CGRect(x: 190, y: 200, width: 160, height: 40))
        greenOvalButton.layer.cornerRadius = greenOvalButton.frame.height / 2
        greenOvalButton.setTitle("To Text Label", for: .normal)
        greenOvalButton.setTitleColor(UIColor.black, for: .normal)
        greenOvalButton.backgroundColor = UIColor.green
        greenOvalButton.addTarget(self, action: #selector(greenOB), for: .touchUpInside)
        view.addSubview(greenOvalButton)
        
        // Other oval button
        let otherOvalButton = UIButton(frame: CGRect(x: 80, y: 450, width: 300, height: 50))
        otherOvalButton.layer.cornerRadius = otherOvalButton.frame.height / 2
        otherOvalButton.setTitle("To Label View", for: .normal)
        otherOvalButton.backgroundColor = UIColor.black
        otherOvalButton.setTitleColor(UIColor.white, for: .normal)
        otherOvalButton.addTarget(self, action: #selector(longOvalButton), for: .touchUpInside)
        view.addSubview(otherOvalButton)
    }
    
    @objc func redRoundButton() {
        print("Red Round Plus Button Tapped")
        let imageVC = imageViewController()
        self.present(imageVC, animated: true, completion: nil)
    }
    
    @objc func blueSquareButton() {
        print("Blue Square Button Tapped")
    }
    
    @objc func rectangleButton() {
        print("Gray Rectangle Button Tapped")
        let logInVC = LogInViewController()
        self.present(logInVC, animated: true, completion: nil)
    }
    
    @objc func blueOvalButton() {
        print("Oval button tapped")
    }
    
    @objc func calButton() {
        print("Calendar Button Tapped")
    }
    
    @objc func greenOB() {
        print("Green oval button tapped")
        let textVC = TextViewController()
        self.present(textVC, animated: true, completion: nil)
    }
    
    @objc func longOvalButton() {
        print("Long Oval Button Tapped🤢")
        let labelVC = labelViewController() //change this to your class name
        self.present(labelVC, animated: true, completion: nil)
        
        

    }
}

