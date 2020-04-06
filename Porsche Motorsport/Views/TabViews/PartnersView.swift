//
//  PartnersView.swift
//  Porsche Motorsport
//
//  Created by Giovanni Noa on 4/4/20.
//  Copyright © 2020 Giovanni Noa. All rights reserved.
//

import Foundation
import SwiftUI
import SDWebImageSwiftUI

struct PartnersView: View {
    
    let partners = ["https://files.porsche.com/filestore/image/multimedia/none/rd-2014-motorsport-raceseries-fiawec-teaser-michelin/normal/ca4cbf3b-17df-11e8-bbc5-0019999cd470;s3/porsche-normal.jpg",
                    "https://files.porsche.com/filestore/image/multimedia/none/rd-2014-motorsport-raceseries-fiawec-teaser-michelin/normal/ca4cbf3b-17df-11e8-bbc5-0019999cd470;s3/porsche-normal.jpg",
                    "https://files.porsche.com/filestore/image/multimedia/none/rd-2014-motorsport-raceseries-fiawec-teaser-michelin/normal/ca4cbf3b-17df-11e8-bbc5-0019999cd470;s3/porsche-normal.jpg",
                    "https://files.porsche.com/filestore/image/multimedia/none/rd-2014-motorsport-raceseries-fiawec-teaser-michelin/normal/ca4cbf3b-17df-11e8-bbc5-0019999cd470;s3/porsche-normal.jpg",
                    "https://files.porsche.com/filestore/image/multimedia/none/rd-2014-motorsport-raceseries-fiawec-teaser-michelin/normal/ca4cbf3b-17df-11e8-bbc5-0019999cd470;s3/porsche-normal.jpg"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                ForEach((0..<partners.count)) { indexPath in
                    WebImage(url: URL(string: self.partners[indexPath])!)
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .navigationBarTitle("Porsche Partners")
    }
}
