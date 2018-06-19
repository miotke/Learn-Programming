//
//  Cell.swift
//  TableViews
//
//  Created by Andrew on 6/18/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class Cell: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    public var myData = ["data15", "data16", "data17", "data18", "data19", "data20", "data21", "data22", "data23", "data24", "data25", "data26", "data27", "data28"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension Cell: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = myData[indexPath.row]
        return cell
    }
}
