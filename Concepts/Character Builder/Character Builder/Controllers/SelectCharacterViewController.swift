//
//  SelectCharacterViewController.swift
//  Character Builder
//
//  Created by Andrew Miotke on 1/1/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class SelectCharacterViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tableview: UITableView!
    
    // MARK: Constants
    let colors = Colors()
    let characterCells = SelectCharacterCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = colors.black
        
        tableview.delegate = self
        tableview.dataSource = self
    }

    // MARK: Actions
}

// MARK: Extensions - Tableview
extension SelectCharacterViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterCells.characterArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
