//
//  MoreTableView.swift
//  TableViews
//
//  Created by Andrew Miotke on 6/19/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class MoreTableView: UIViewController {

    // Outlet
    @IBOutlet weak var moreTableView: UITableView!
    @IBOutlet weak var moreLabel: UILabel!
    
    var maggieArray = ["I", "love", "Maggie", "she's", "the", "best", "person"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreLabel.text = "I love Maggie"
        moreLabel.textAlignment = .center
        moreLabel.backgroundColor = UIColor.brown
        moreLabel.textColor = UIColor.white
        moreLabel.font = UIFont(name: "Avenir Next", size: 30)
        
        moreTableView.delegate = self
        moreTableView.dataSource = self
    }
}

extension MoreTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return maggieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let maggieCell = tableView.dequeueReusableCell(withIdentifier: "moreTableView", for: indexPath)
        maggieCell.textLabel?.text = maggieArray[indexPath.row]
        return maggieCell
    }
    
    
}
