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
                    Text("Vehicles")
            }
            
            BlogPostsView()
                .tabItem {
                    Text("Blog")
            }
            
            PartnersView()
                .tabItem {
                    Text("Partners")
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
