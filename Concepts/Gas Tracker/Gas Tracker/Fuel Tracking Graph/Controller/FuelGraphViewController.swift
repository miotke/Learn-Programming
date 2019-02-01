//
//  FuelGraphViewController.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/8/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit
import Charts

class FuelGraphViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var graphViewTitle: ViewTitleLabel!
    
    let colors = Colors()
    let generateChartData = GraphViewCells()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupFuelGraphView()
        
        tableview.delegate = self
        tableview.dataSource = self
    }
}

// MARK: Extensions - View setup
extension FuelGraphViewController {
    func setupFuelGraphView() {
        graphViewTitle.text = "Graphs"
    }
}

// MARK: Extension - Table view
extension FuelGraphViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let lineChartCell = tableView.dequeueReusableCell(withIdentifier: "LineChartCell", for: indexPath)
        return lineChartCell
    }
}
