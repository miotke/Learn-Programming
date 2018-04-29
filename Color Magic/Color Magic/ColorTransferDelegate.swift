//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Andrew on 4/29/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
