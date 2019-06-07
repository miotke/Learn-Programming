//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Andrew on 4/29/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
