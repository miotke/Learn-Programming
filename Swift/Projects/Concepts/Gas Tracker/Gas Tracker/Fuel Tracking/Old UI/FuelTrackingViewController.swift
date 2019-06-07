//
//  ViewController.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/8/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import CoreData

class FuelTrackingViewController: UIViewController {
    // MARK: Outlets
    @IBOutlet weak var fuelTrackingTitleLabel: UILabel!
    @IBOutlet weak var amountOfFuelPurchasedLabel: UILabel!
    @IBOutlet weak var milesSinceLastFuelPurchaseLabel: UILabel!
    @IBOutlet weak var priceOfFuelLabel: UILabel!
    @IBOutlet weak var octaneNumberLabel: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    // Outlets - Text view
    @IBOutlet weak var priceOfFuelTextView: TextFieldStyle!
    @IBOutlet weak var amountOfFuelPurchasedTextView: TextFieldStyle!
    @IBOutlet weak var milesSinceLastFuelPurchaseTextView: TextFieldStyle!
    // Outlets - Octane levels
    @IBOutlet weak var eightySevenOctane: UIButton!
    @IBOutlet weak var eightyNineOctane: UIButton!
    @IBOutlet weak var ninetyTwoOctane: UIButton!
    @IBOutlet weak var oneHundredOctane: UIButton!
    @IBOutlet weak var dieselOctane: OctaneButtonStyle!

    // MARK: Constants
    let colors = Colors()
    let getCurrentDate = GetCurrentDateWhenSaving()
    var storedOctaneLevel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFuelTrackingViewController()
    }

    // MARK: Actions
    @IBAction func saveTrackingButton(_ sender: Any) {
        self.save { (complete) in
            if complete {
                dismiss(animated: true, completion: nil)
            }
        }
        clearAllTextFieldsAfterSaveButtonWasTapped()
        storedOctaneLevel = ""
    }
    
    // MARK: Actions - Octane Buttons
    @IBAction func eightySevenButtonTapped(_ sender: Any) {
        if let eightySevenOctane = eightySevenOctane.titleLabel?.text {
            storedOctaneLevel = eightySevenOctane
        }
    }
    
    @IBAction func eightyNineButtonTapped(_ sender: Any) {
        if let eightyNineOctane = eightyNineOctane.titleLabel?.text {
            storedOctaneLevel = eightyNineOctane
        }
    }
    
    @IBAction func ninetyTwoButtonsTapped(_ sender: Any) {
        if let ninetyTwoOctane = ninetyTwoOctane.titleLabel?.text {
            storedOctaneLevel = ninetyTwoOctane
        }
    }
    
    @IBAction func oneHundredButtonTapped(_ sender: Any) {
        if let oneHundredOctane = oneHundredOctane.titleLabel?.text {
            storedOctaneLevel = oneHundredOctane
        }
    }
    
    @IBAction func dieselButtonTapped(_ sender: Any) {
        if let diesel = dieselOctane.titleLabel?.text {
            storedOctaneLevel = diesel
        }
    }
    
    #warning("Move this to CoreDataManager.swift")
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        getCurrentDate.setCurrentDate()
        let fuelTracking = FuelTracking(context: managedContext)
        
        fuelTracking.price = priceOfFuelTextView.text
        fuelTracking.amoundOfFuelPurchased = amountOfFuelPurchasedTextView.text
        fuelTracking.milesOnLastTank = milesSinceLastFuelPurchaseLabel.text
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
}

// MARK: Extensions - View setup
extension FuelTrackingViewController {
    func setupFuelTrackingViewController() {
        fuelTrackingTitleLabel.text = "Track Fuel"
        
        priceOfFuelLabel.text = "Price per Gallon"
        
        amountOfFuelPurchasedLabel.text = "Amount of Fuel Purchased"
        
        milesSinceLastFuelPurchaseLabel.text = "How Many Miles on the Last Tank?"
        
        octaneNumberLabel.text = "Octane Level"
        
        eightySevenOctane.setTitle("87", for: .normal)
        eightyNineOctane.setTitle("89", for: .normal)
        ninetyTwoOctane.setTitle("92", for: .normal)
        oneHundredOctane.setTitle("100", for: .normal)
        dieselOctane.setTitle("Diesel", for: .normal)
        dieselOctane.backgroundColor = colors.dieselGreen
    }
    
    func clearAllTextFieldsAfterSaveButtonWasTapped() {
        self.priceOfFuelTextView.text = nil
        self.amountOfFuelPurchasedTextView.text = nil
        self.milesSinceLastFuelPurchaseTextView.text = nil
    }
}
