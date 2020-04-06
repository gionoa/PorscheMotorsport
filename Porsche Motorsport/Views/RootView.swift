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
                TabItem(text: "Vehicles", systemIcon: "car")
            }
            
            NavigationView {
                BlogPostsView()
            }
            .tabItem {
                TabItem(text: "Blog", systemIcon: "text.bubble")
            }
            
            NavigationView {
                PartnersView()
            }
            .tabItem {
                TabItem(text: "Partners", systemIcon: "gauge")
            }
        }
    }
}

private struct TabItem: View {
    let text: String
    let systemIcon: String
    
    var body: some View {
        VStack {
            Text(text)
            Image(systemName: systemIcon)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
