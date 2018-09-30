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
    
    var getTextArray = ArrayData()

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
        return getTextArray.anotherArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = getTextArray.anotherArray[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellTitle = getTextArray.anotherArray[indexPath.row]
        performSegue(withIdentifier: toDetailViewController, sender: cellTitle)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toDetailViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                let selectedCell = getTextArray.anotherArray[indexPath.row]
                if let destination = segue.destination as? DetailViewController {
                    destination.getTextArray = selectedCell
                }
            }
        }
    }
}
