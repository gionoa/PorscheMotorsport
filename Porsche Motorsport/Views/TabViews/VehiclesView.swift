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
                ForEach((0..<viewModel.dataSource.count)) { indexPath in
                    NavigationLink(destination: VehicleDetailView(vehicle: self.viewModel.dataSource[indexPath])) {
                        VehicleView(vehicle: self.viewModel.dataSource[indexPath])
                    }
                }
            }
        }
        .navigationBarTitle("Racing Line")
    }
}
