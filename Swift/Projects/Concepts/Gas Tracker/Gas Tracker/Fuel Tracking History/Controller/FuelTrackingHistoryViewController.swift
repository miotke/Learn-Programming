//
//  FuelTrackingHistoryViewController.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/8/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class FuelTrackingHistoryViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var fuelTrackingHistoryLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Constants
    let coreDataManager = CoreDataManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupFuelTrackingHistoryView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        coreDataManager.fetchCoreDataObjects()
        self.tableView.reloadData()
    }
}

// MARK: Extensions - Table View
extension FuelTrackingHistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        coreDataManager.fuelTracking.reverse()
        return coreDataManager.fuelTracking.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell else { return UITableViewCell() }
        let historyForCell = coreDataManager.fuelTracking[indexPath.row]
        cell.configureCell(configureCell: historyForCell)
        return cell
    }
}

// MARK: Extensions - View setup
extension FuelTrackingHistoryViewController {
    func setupFuelTrackingHistoryView() {
        fuelTrackingHistoryLabel.text = "Fuel Tracking History"
        tableView.delegate = self
        tableView.dataSource = self
    }
}
