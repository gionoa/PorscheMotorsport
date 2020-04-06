//
//  VehicleView.swift
//  Porsche Motorsport
//
//  Created by Giovanni Noa on 4/5/20.
//  Copyright © 2020 Giovanni Noa. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct VehicleView: View {
    let vehicle: Vehicle
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            WebImage(url: URL(string: vehicle.imageURL)!)
                .renderingMode(.original)
                .resizable()
                .placeholder {
                    Rectangle().foregroundColor(.gray)
                }
                .indicator(.activity)
                .animation(.easeInOut(duration: 0.4))
                .transition(.fade)
                .scaledToFit()
            
            Spacer()
            
            Text(vehicle.name)
                .font(.custom(PorscheFont.Thin.rawValue, size: 36))
                .foregroundColor(Color.white)
                .padding(.leading, 16)
        }
    }
}
