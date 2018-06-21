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
        
        
    }

}

extension EvenMoreTableView: UITableViewDelegate {
    
}
