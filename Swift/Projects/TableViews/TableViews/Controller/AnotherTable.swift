//
//  AnotherTable.swift
//  TableViews
//
//  Created by Andrew Miotke on 6/19/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class AnotherTable: UIViewController {
 
    // Outlets
    @IBOutlet weak var anotherLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    var array = ["Andrew", "loves", "Maggie", "!!!"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        anotherLabel.text = "I love Maggie!"
        anotherLabel.textAlignment = .center
        anotherLabel.backgroundColor = UIColor.black
        anotherLabel.textColor = UIColor.white
        anotherLabel.font = UIFont(name: "Avenir Next", size: 28)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}


extension AnotherTable: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let arrayCell = tableView.dequeueReusableCell(withIdentifier: "ArrayCell", for: indexPath)
        arrayCell.textLabel?.text = array[indexPath.row]
        return arrayCell
    }
    
    
}
