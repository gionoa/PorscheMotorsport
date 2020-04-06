//
//  HTechSpecDescriptionView.swift
//  Porsche Motorsport
//
//  Created by Giovanni Noa on 4/5/20.
//  Copyright © 2020 Giovanni Noa. All rights reserved.
//

import SwiftUI

struct HTechSpecDescriptionView: View {
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
