//
//  VehicleDetailView.swift
//  Porsche Motorsport
//
//  Created by Giovanni Noa on 4/4/20.
//  Copyright © 2020 Giovanni Noa. All rights reserved.
//

import Foundation
import SwiftUI
import SDWebImageSwiftUI

struct VehicleDetailView: View {
    @State var isShowingVideo = false
    
    let vehicle: Vehicle
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                WebImage(url: URL(string: vehicle.url)!)
                    .resizable()
                    .scaledToFit()
                
                Text("Technical Specs")
                    .font(.custom(PorscheFont.Thin.rawValue, size: 36))
                    .foregroundColor(Color.gray)
                    .padding(.leading, 8)
                
                HTechSpecDescription(titleText: "Power",
                                    detailText: vehicle.power)
                
                HTechSpecDescription(titleText: "Engine",
                                    detailText: vehicle.engine)
                
                HTechSpecDescription(titleText: "Weight",
                                    detailText: vehicle.weight)
                
                HTechSpecDescription(titleText: "Transmission",
                                    detailText: vehicle.transmission)
                
                HTechSpecDescription(titleText: "Displacement",
                                    detailText: vehicle.displacement)
                
                Text("The new 911 RSR.")
                    .font(.custom(PorscheFont.Regular.rawValue, size: 32))
                
                Text("Team made.")
                    .font(.custom(PorscheFont.Regular.rawValue, size: 28))
                
                ZStack(alignment: .center) {
                    
                    Button(action: {self.isShowingVideo = true}) {
                        AnimatedImage(url: URL(string: "https://media.giphy.com/media/KfSwx9ASQQm4p8JNul/giphy.gif"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width, height: 420)
                    }
                    .sheet(isPresented: $isShowingVideo) {
                        Text("Hey")
                            .onDisappear {
                                
                        }
                    }
                    
                    Image(systemName: "play.circle")
                        .font(.system(size: 60))
                }
            }
        }
            
        .navigationBarTitle(vehicle.name)
    }
}

struct HTechSpecDescription: View {
    let titleText: String
    let detailText: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Text(titleText)
                .font(.custom(PorscheFont.Thin.rawValue, size: 24))
                .padding(.leading, 8)
            
            Rectangle()
                .foregroundColor(Color.PorscheRed)
                .frame(width: 4, height: 40)
            
            Text(detailText)
                .font(.custom(PorscheFont.Thin.rawValue, size: 18))
        }
    }
}
