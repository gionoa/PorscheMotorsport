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
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 8) {
                    WebImage(url: URL(string: "https://files.porsche.com/filestore/image/multimedia/none/motorsport-racingcars-992-rsr-sideshot/model/3c0f56bc-5319-11ea-80c8-005056bbdc38;sF/porsche-model.png")!)
                        .resizable()
                        .scaledToFit()
                    
                    Text("Technical Specs")
                        .font(.custom(PorscheFont.Thin.rawValue, size: 36))
                        .foregroundColor(Color.gray)
                        .padding(.leading, 8)
                                        
                    HTecSpecDescription(titleText: "Power",
                                        detailText: "Approx. 378kW (515PS), depending on restrictor")
                    
                    HTecSpecDescription(titleText: "Engine",
                                        detailText: "Water-cooled six cylinder boxer engine, positioned in front of the rear axle")
                    
                    HTecSpecDescription(titleText: "Weight",
                                        detailText: "approx. 1,245kg (subject to BOP)")
                    
                    HTecSpecDescription(titleText: "Transmission",
                                        detailText: "Six-speed sequential dog-type transmission, weight optimized")
                    
                    HTecSpecDescription(titleText: "Displacement",
                                        detailText: "4,194cm³")
                }
            }
        
        .navigationBarTitle("911 RSR (2019)")
    }
}

struct HTecSpecDescription: View {
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
