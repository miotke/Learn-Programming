//
//  DetailTableView.swift
//  VW Mk2
//
//  Created by Andrew Miotke on 6/30/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

extension DetailVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath)
        cell.textLabel?.text = detailArray[indexPath.row]
        return cell
    }
}
