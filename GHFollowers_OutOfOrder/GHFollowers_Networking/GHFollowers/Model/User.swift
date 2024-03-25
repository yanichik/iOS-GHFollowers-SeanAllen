//
//  User.swift
//  GHFollowers
//
//  Created by YB on 3/11/24.
//  Copyright © 2024 Sean Allen. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var htmlUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var followers: Int
    var following: Int
    var createdAt: String
}
