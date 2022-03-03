//
//  SplashViewModel.swift
//  Taxi
//
//  Created by Shokhrukh Egamov on 03.01.2022.
//

import Foundation
import Alamofire

class SplashViewModel: ObservableObject {
    @Published var connects: Bool = false
    @Published var showAlert: Bool = false
    
    func serverConnect() {
        HeyTaxiService.shared.serverConnect {
            result in
            self.connects = result
            self.showAlert = result
        }
    }
}
