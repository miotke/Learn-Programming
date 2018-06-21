//
//  EvenMoreTableView.swift
//  TableViews
//
//  Created by Andrew Miotke on 6/20/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class EvenMoreTableView: UIViewController {
    
    // Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var maggieArray = ["Maggie", "is", "the best", "person", "ever!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.green
        label.backgroundColor = UIColor.purple
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next", size: 30)
        label.text = "I really love Maggie!"
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension EvenMoreTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return maggieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let maggieCell = tableView.dequeueReusableCell(withIdentifier: "MaggieCell", for: indexPath)
        maggieCell.textLabel?.text = maggieArray[indexPath.row]
        return maggieCell
    }
    
    
}
