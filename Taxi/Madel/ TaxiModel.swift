//
//   TaxiModel.swift
//  Taxi
//
//  Created by Shokhrukh Egamov on 03.02.2022.
//

import Foundation

struct TaxiModel: Codable {
    let id: Int
    let name: String
    let carNumber: String
    let driver: UserModel
    
    init(id: Int, user: UserModel, name: String, carNumber: String) {
        self.id = id
        self.driver = user
        self.name = name
        self.carNumber = carNumber
    }
}
