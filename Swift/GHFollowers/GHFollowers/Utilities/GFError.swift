//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Andrew Miotke on 2/1/20.
//  Copyright © 2020 andrewmiotke. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete request, check network connection."
    case invalidResponse = "Invalid response from server."
    case invalidData = "The data received from server was invalid, try again."
}
