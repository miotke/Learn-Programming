//
//  ChannelVC.swift
//  Smack
//
//  Created by Andrew on 5/6/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }
}
