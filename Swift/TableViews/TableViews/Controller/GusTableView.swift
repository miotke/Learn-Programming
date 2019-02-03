//
//  GusTableView.swift
//  TableViews
//
//  Created by Andrew Miotke on 6/22/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class GusTableView: UIViewController {
    
    // Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var gusIsOurPup = ["Gus", "is", "our", "pup"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.backgroundColor = UIColor.purple
        label.text = "Gus is our pup!"
        label.font = UIFont(name: "Avenir Next", size: 30)

        tableView.delegate = self
        tableView.dataSource = self
        
    }
}

extension GusTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gusIsOurPup.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GusCell", for: indexPath)
        cell.textLabel?.text = gusIsOurPup[indexPath.row]
        return cell
    }
    
    
}
