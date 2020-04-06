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
import AVFoundation
import UIKit

struct VehicleDetailView: View {
    @State var isShowingVideo = false
    
    var player: AVPlayer = {
        let asset = AVAsset(url: URL(string: "https://files.porsche.com/filestore/video/multimedia/en/motorsport-racingcars-982-718-c7-gt4-cs-video/video-mp4/e43e1157-0433-11e9-8373-0019999cd470/porsche-718-Cayman-GT4-Clubsport.mp4")!)
        let playerItem = AVPlayerItem(asset: asset)
        let player = AVPlayer(playerItem: playerItem)
        
        return player
    }()
    
    lazy var playerLayer: AVPlayerLayer = {
        let playerLayer = AVPlayerLayer()
        playerLayer.videoGravity = .resizeAspect
        
        return playerLayer
    }()
    
    let vehicle: Vehicle
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                WebImage(url: URL(string: vehicle.detailImageURL)!)
                    .resizable()
                    .scaledToFit()
                
                Text("Technical Specs")
                    .font(.custom(PorscheFont.Thin.rawValue, size: 36))
                    .foregroundColor(Color.gray)
                    .padding(.leading, 8)
                
                HTechSpecDescriptionView(titleText: "Power",
                                         detailText: vehicle.power)
                
                HTechSpecDescriptionView(titleText: "Engine",
                                         detailText: vehicle.engine)
                
                HTechSpecDescriptionView(titleText: "Weight",
                                         detailText: vehicle.weight)
                
                HTechSpecDescriptionView(titleText: "Transmission",
                                         detailText: vehicle.transmission)
                
                HTechSpecDescriptionView(titleText: "Displacement",
                                         detailText: vehicle.displacement)
                    .padding(.bottom, 36)
                
                HStack(alignment: .center) {
                    Spacer()
                    
                    VStack(alignment: .center, spacing: 8) {
                        Text("The new 911 RSR.")
                            .font(.custom(PorscheFont.Regular.rawValue, size: 32))
                        
                        Text("Team made.")
                            .font(.custom(PorscheFont.Thin.rawValue, size: 28))
                    }
                    
                    Spacer()
                }
                
                Button(action: {
                    self.isShowingVideo = true }) {
                        ZStack(alignment: .center) {
                            AnimatedImage(url: URL(string: "https://media.giphy.com/media/KfSwx9ASQQm4p8JNul/giphy.gif"))
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width, height: 200)
                            
                            Image(systemName: "play.circle")
                                .foregroundColor(Color.PorscheRed)
                                .font(.system(size: 60))
                        }
                        .sheet(isPresented: $isShowingVideo) {
                            NavigationView {
                                PlayerSwiftUIView()
                                    .rotationEffect(.degrees(90))
                                    .scaledToFit()
                                    .frame(width: 800, height: 1100)
                            }
                            .onDisappear {
                                self.isShowingVideo = false
                            }
                        }
                }
                .padding(.bottom, 12)
            }
            .navigationBarTitle(vehicle.name)
        }
        
    }
}

struct VehicleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleDetailView(vehicle: Vehicle(imageURL: imageURL,
                                           detailImageURL: imageURL,
                                           name: "911 RSR (2019)",
                                           power: "Approx. 378kW (515PS), depending on restrictor",
                                           engine: "Water-cooled six cylinder boxer engine, positioned in front of the rear axle",
                                           weight: "approx. 1,245kg (subject to BOP)",
                                           transmission: "Six-speed sequential dog-type transmission, weight optimized",
                                           displacement: "4,194cm³"))
    }
}
