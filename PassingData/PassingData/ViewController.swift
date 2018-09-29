//
//  ViewController.swift
//  PassingData
//
//  Created by Andrew Miotke on 9/28/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

var toDetailViewController = "toDetailViewController"

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var textArray = ["cell 1", "cell 2", "cell 3", "cell 4", "cell 5", "cell 6", "cell 7", "cell 8", "cell 9", "cell 10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Table Views That Pass Data"
        label.textAlignment = .center
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = textArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellTitle = textArray[indexPath.row]
        performSegue(withIdentifier: toDetailViewController, sender: cellTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toDetailViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                let selectedCell = textArray[indexPath.row]
                if let destination = segue.destination as? DetailViewController {
                    destination.detailLabel.text = selectedCell
                }
            }
        }
    }
}
