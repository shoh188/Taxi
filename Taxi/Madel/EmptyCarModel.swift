//
//  EmptyCarModel.swift
//  Taxi
//
//  Created by Shokhrukh Egamov on 03.01.2022.
//

import Foundation


struct EmptyCarModel: Codable {
    let taxi: TaxiModel?
    let location: LocationModel
    
    init(taxi: TaxiModel?, location: LocationModel) {
        self.taxi = taxi
        self.location = location
    }
}
