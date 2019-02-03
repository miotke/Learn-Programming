//
//  ViewController.swift
//  Project39
//
//  Created by Andrew Miotke on 11/14/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var playData = PlayData()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "Plays!"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playData.allWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let word = playData.allWords[indexPath.row]
        cell.textLabel!.text = word
        
        cell.detailTextLabel!.text = "\(playData.wordCounts.count(for: word))"
        
        return cell
    }

}

