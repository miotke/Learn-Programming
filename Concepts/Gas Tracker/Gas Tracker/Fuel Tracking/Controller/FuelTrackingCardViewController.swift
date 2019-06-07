//
//  FuelTrackingCardViewController.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/16/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import CoreData
import Lottie

class FuelTrackingCardViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var fuelTrackingTitleLabel: ViewTitleLabel!
    @IBOutlet weak var octaneNumberLabel: UILabel!
    
    @IBOutlet weak var priceOfFuelTextField: UITextField!
    @IBOutlet weak var amountOfFuelPurchasedTextField: UITextField!
    @IBOutlet weak var milesSinceFuelSTopTextField: UITextField!
    
    @IBOutlet weak var eightySevenOctaneButton: OctaneButtonStyle!
    @IBOutlet weak var eightyNineOctaneButton: OctaneButtonStyle!
    @IBOutlet weak var ninetyTwoOctaneButton: OctaneButtonStyle!
    @IBOutlet weak var oneHundredOctaneButton: OctaneButtonStyle!
    @IBOutlet weak var dieselButton: OctaneButtonStyle!
    
    @IBOutlet weak var saveSuccessfulAnimiation: LOTAnimationView!
    
    // MARK: Constants and Variables
    let colors = Colors()
    let coreDataManager = CoreDataManager()
    let getCurrentDate = GetCurrentDateWhenSaving()
    var storedOctaneLevel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFuelTrackingViewController()
        setupPlaceholderText()
        saveSuccessfulAnimiation.isHidden = true
        self.hideKeyboardWhenTappedAround()
    }
    
    #warning("Move this to CoreDataManager.swift")
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        getCurrentDate.setCurrentDate()
        let fuelTracking = FuelTracking(context: managedContext)
        
        fuelTracking.price = priceOfFuelTextField.text
        fuelTracking.amoundOfFuelPurchased = amountOfFuelPurchasedTextField.text
        fuelTracking.milesOnLastTank = milesSinceFuelSTopTextField.text
        fuelTracking.octaneLevel = storedOctaneLevel
        fuelTracking.dateOfEntry = getCurrentDate.savedDate
        
        do {
            try managedContext.save()
            completion(true)
        } catch {
            debugPrint("Could not save \(error.localizedDescription)")
            completion(false)
        }
    }
    
    func LOTSaveButtonTappedAnimation() {
        saveSuccessfulAnimiation.backgroundColor = colors.clear
        saveSuccessfulAnimiation.isHidden = false
        saveSuccessfulAnimiation.setAnimation(named: "save_complete")
        saveSuccessfulAnimiation.play()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.saveSuccessfulAnimiation.isHidden = true
        }
    }
    
    // MARK: Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        self.save { (complete) in
            if complete {
                saveSuccessfulAnimiation.isHidden = false
            }
        }
        
        LOTSaveButtonTappedAnimation()
        clearAllTextFieldsAfterSaveButtonWasTapped()
        storedOctaneLevel = ""
    }
    
    @IBAction func eightySevenOctaneButtonTapped(_ sender: Any) {
        if let eightySevenOctane = eightySevenOctaneButton.titleLabel?.text {
            storedOctaneLevel = eightySevenOctane
        }
    }
    
    @IBAction func eightyNineOctaneButtonTapped(_ sender: Any) {
        if let eightyNineOctane = eightyNineOctaneButton.titleLabel?.text {
            storedOctaneLevel = eightyNineOctane
        }
    }
    
    @IBAction func ninetyTwoOctaneButtonTapped(_ sender: Any) {
        if let ninetyTwoOctane = ninetyTwoOctaneButton.titleLabel?.text {
            storedOctaneLevel = ninetyTwoOctane
        }
    }
    
    @IBAction func oneHundredOctaneButtonTapped(_ sender: Any) {
        if let oneHundredOctane = oneHundredOctaneButton.titleLabel?.text {
            storedOctaneLevel = oneHundredOctane
        }
    }
    
    @IBAction func dieselButtonTapped(_ sender: Any) {
        if let diesel = dieselButton.titleLabel?.text {
            storedOctaneLevel = diesel
        }
    }
}

// MARK: Extensions - View setup
extension FuelTrackingCardViewController {
    func setupFuelTrackingViewController() {
        self.view.backgroundColor = colors.white
        
        fuelTrackingTitleLabel.text = "Track Fuel"
        
        octaneNumberLabel.text = "Octane Level"
        
        eightySevenOctaneButton.setTitle("87", for: .normal)
        eightyNineOctaneButton.setTitle("89", for: .normal)
        ninetyTwoOctaneButton.setTitle("92", for: .normal)
        oneHundredOctaneButton.setTitle("100", for: .normal)
        dieselButton.setTitle("Diesel", for: .normal)
        dieselButton.backgroundColor = colors.dieselGreen
    }
    
    func clearAllTextFieldsAfterSaveButtonWasTapped() {
        self.priceOfFuelTextField.text = nil
        self.amountOfFuelPurchasedTextField.text = nil
        self.milesSinceFuelSTopTextField.text = nil
    }
    
    func setupPlaceholderText() {
        priceOfFuelTextField.attributedPlaceholder = NSAttributedString(string: "Price per gallon", attributes: [
            .foregroundColor: UIColor.lightGray,
            .font: UIFont.boldSystemFont(ofSize: 14.0)
            ])
        amountOfFuelPurchasedTextField.attributedPlaceholder = NSAttributedString(string: "Amount of fuel purchased", attributes: [
            .foregroundColor: UIColor.lightGray,
            .font: UIFont.boldSystemFont(ofSize: 14.0)
            ])
        milesSinceFuelSTopTextField.attributedPlaceholder = NSAttributedString(string: "Miles on last tank", attributes: [
            .foregroundColor: UIColor.lightGray,
            .font: UIFont.boldSystemFont(ofSize: 14.0)
            ])
    }
}
