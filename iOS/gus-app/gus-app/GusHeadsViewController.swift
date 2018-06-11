//
//  GusHeadsViewController.swift
//  gus-app
//
//  Created by Andrew Miotke on 12/2/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import UIKit

class GusHeadsViewController: UIViewController {
    
    
    @IBOutlet weak var gusHeadImage: UIImageView!
    
    
    @IBAction func gusOne(_ sender: UIButton) {
        gusHeadImage.image = UIImage(named: "gus-head-1")
        
    }
    
    @IBAction func gusTwo(_ sender: UIButton) {
        gusHeadImage.image = UIImage(named: "gus-head-2")
    }
    
    @IBAction func gusThree(_ sender: UIButton) {
        gusHeadImage.image = UIImage(named: "gus-head-3")
    }
    
    @IBAction func gusFour(_ sender: UIButton) {
        gusHeadImage.image = UIImage(named: "gus-head-4")
    }
    
    @IBAction func gusFive(_ sender: UIButton) {
        gusHeadImage.image = UIImage(named: "gus-head-5")
    }
    
    @IBAction func gusSix(_ sender: UIButton) {
        gusHeadImage.image = UIImage(named: "gus-head-6")
    }
    
    @IBAction func gusSeven(_ sender: UIButton) {
        gusHeadImage.image = UIImage(named: "gus-head-7")
    }
    
    @IBAction func gusEight(_ sender: UIButton) {
        gusHeadImage.image = UIImage(named: "gus-head-8")
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // changes the title in the nav bar
        title = "Gus Heads!"
        
        // refreshes the gus picture in the main UI Image View
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(resetToGus))
        
        // back to main navigation view
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(home))
        
        // sets the initial gus picture in the UI Image View
        gusHeadImage.image = UIImage(named: "gus")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func resetToGus() {
        gusHeadImage.image = UIImage(named: "gus")
    }
    
    // goes back to navigation of different Gus items
    @objc func home() {
        dismiss(animated: true, completion: nil)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
