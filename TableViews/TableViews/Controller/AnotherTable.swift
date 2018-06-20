//
//  AnotherTable.swift
//  TableViews
//
//  Created by Andrew Miotke on 6/19/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class AnotherTable: UIViewController {
    
    var array = ["Andrew", "loves", "Maggie", "!!!"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}


extension AnotherTable: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
