//
//  GFError.swift
//  GHFollowers
//
//  Created by YB on 3/26/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid URL. Please try again."
    case unableToComplete = "Unable to complete your request. Please try again."
    case invalidResponse = "Invalid response from server. Please try again."
    case invalidData = "Received blank data. Please try again."
}
