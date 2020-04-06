//
//  VideoPlayer.swift
//  Porsche Motorsport
//
//  Created by Giovanni Noa on 4/5/20.
//  Copyright © 2020 Giovanni Noa. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import SwiftUI

class playeruiviewcontroller: UIViewController {
    let playerView = PlayerUIView()
}

class PlayerUIView: UIView {
    private let playerLayer = AVPlayerLayer()
    
    var url = URL(string: "https://files.porsche.com/filestore/video/multimedia/en/motorsport-racingcars-982-718-c7-gt4-cs-video/video-mp4/e43e1157-0433-11e9-8373-0019999cd470/porsche-718-Cayman-GT4-Clubsport.mp4")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let player = AVPlayer(url: url)
        player.play()
        
        //     UIDevice.current.setValue(UIDeviceOrientation.landscapeLeft, forKey: "orientation")
        
        playerLayer.player = player
        
        layer.addSublayer(playerLayer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}

struct PlayerSwiftUIView: View {
    var body: some View {
        PlayerView()
    }
    
}

struct PlayerView: UIViewRepresentable {
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) { }
    
    func makeUIView(context: Context) -> UIView { PlayerUIView() }
}
