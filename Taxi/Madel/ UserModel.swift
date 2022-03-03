//
//   UserModel.swift
//  Taxi
//
//  Created by Shokhrukh Egamov on 03.02.2022.
//

import Foundation

struct UserModel: Codable {
    let name: String?
    let username: String?
    
    init(name: String, username: String) {
        self.name = name
        self.username = username
    }
}
