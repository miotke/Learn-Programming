//
//  GusViewController.swift
//  TableViews
//
//  Created by Andrew Miotke on 6/29/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class GusViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var gusLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var gusArray = ["Gus 0", "Gus 1", "Gus 2", "Gus Gus 3"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}


extension GusViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        gusArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gusGusCell", for: indexPath)
    }
    
    
}
