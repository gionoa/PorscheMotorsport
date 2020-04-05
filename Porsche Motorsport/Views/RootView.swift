//
//  RootView.swift
//  Porsche Motorsport
//
//  Created by Giovanni Noa on 4/4/20.
//  Copyright © 2020 Giovanni Noa. All rights reserved.
//

import Foundation
import SwiftUI

struct RootView: View {
    
    var body: some View {
        TabView {
            NavigationView {
                VehiclesView()
            }
                
            .tabItem {
                VStack {
                    Text("Vehicles")
                    Image(systemName: "car")
                }
            }
            
            BlogPostsView()
                .tabItem {
                    VStack {
                        Text("Blog")
                        Image(systemName: "text.bubble")
                    }
            }
            
            PartnersView()
                .tabItem {
                    VStack {
                        Text("Partners")
                        Image(systemName: "gauge")
                    }
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
