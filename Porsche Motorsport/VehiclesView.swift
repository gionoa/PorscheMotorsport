//
//  VehicleView.swift
//  Porsche Motorsport
//
//  Created by Giovanni Noa on 4/4/20.
//  Copyright © 2020 Giovanni Noa. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct VehiclesView: View {
    @ObservedObject var viewModel = VehiclesViewModel()
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 0) {
                ForEach((0..<viewModel.dataSource.count)){ vehicle in
                    VehicleView(vehicle: self.viewModel.dataSource[vehicle])
                }
            }
        }
        .navigationBarTitle("Porsche Lineup")
    }
}

struct VehicleView: View {
    let vehicle: Vehicle
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            WebImage(url: URL(string: vehicle.url)!)
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            Text(vehicle.name)
                .font(.custom(PorscheFont.Regular.rawValue, size: 48))
                .foregroundColor(Color.white)
                .padding(.leading, 16)
        }
    }
}

struct Vehicle: Identifiable {
    let id = UUID()
    let url: String
    let name: String
}

class VehiclesViewModel: ObservableObject {
    @Published var dataSource = [Vehicle]()
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        dataSource = [ Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR"),
                       Vehicle(url: imageURL, name: "911 RSR")
        ]
    }
}
