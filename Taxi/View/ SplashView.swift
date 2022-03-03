//
//   SplashView.swift
//  Taxi
//
//  Created by Shokhrukh Egamov on 03.03.2022.
//

import SwiftUI

struct SplashView: View {
    @StateObject private var viewModel = SplashViewModel()
    
    var body: some View {
        VStack {
            if viewModel.connects {
               
            } else {
                Text("HeyTaxi")
                    .bold()
                    
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
