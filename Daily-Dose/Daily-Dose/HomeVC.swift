//
//  ViewController.swift
//  Daily-Dose
//
//  Created by Andrew on 5/28/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit
import GoogleMobileAds

class HomeVC: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var removeAdsButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if UserDefaults.standard.bool(forKey: PurchaseManager.instance.IAP_REMOVE_ADS) {
            removeAdsButton.removeFromSuperview()
            bannerView.removeFromSuperview()
        } else {
            bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
            bannerView.rootViewController = self
            bannerView.load(GADRequest())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func removeAdsButton(_ sender: Any) {
        // show a loading spinner - Activity indicator
        PurchaseManager.instance.purchaseRemoveAds { (success) in
            // dismiss spinner
            if success {
                self.bannerView.removeFromSuperview()
                self.removeAdsButton.removeFromSuperview()
            } else {
                // show failed message to the user
            }
        }
    }
}

