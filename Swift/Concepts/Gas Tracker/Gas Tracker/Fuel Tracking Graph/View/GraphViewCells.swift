//
//  GraphViewCells.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 1/5/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit
import Charts

class GraphViewCells: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var lineChartView: LineChartView!
    
    // MARK: Constants
    let coreDataManager = CoreDataManager()
    let fuelTracking: [FuelTracking] = []

    override func awakeFromNib() {
        super.awakeFromNib()
        setChartValues()
        coreDataManager.fetchCoreDataObjects()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // Miles per tank
    func setChartValues(_ count : Int = 20) {
        let values = (0..<count).map { (i) -> ChartDataEntry in
            let val = Double(arc4random_uniform(UInt32(count)) + 3)
            return ChartDataEntry(x: Double(i), y: val)
        }
        
        let set1 = LineChartDataSet(values: values, label: "Miles per tank")
        let data = LineChartData(dataSet: set1)

        self.lineChartView.data = data
    }
    
    func randomizeChart() {
        let count = Int(arc4random_uniform(20) + 3)
        setChartValues(count)
    }
}
