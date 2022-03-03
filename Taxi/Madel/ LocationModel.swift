//
//   LocationModel.swift
//  Taxi
//
//  Created by Shokhrukh Egamov on 03.02.2022.
//

import Foundation

struct LocationModel: Codable {
    let latitude: Double
    let longtitude: Double
    
    init(latitude: Double, longtitude: Double) {
        self.latitude = latitude
        self.longtitude = longtitude
    }
}
