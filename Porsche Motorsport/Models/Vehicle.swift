//
//  Vehicle.swift
//  Porsche Motorsport
//
//  Created by Giovanni Noa on 4/5/20.
//  Copyright © 2020 Giovanni Noa. All rights reserved.
//

import Foundation

struct Vehicle: Identifiable {
    let id = UUID()
    let imageURL: String
    let detailImageURL: String
    let name: String
    let power: String
    let engine: String
    let weight: String
    let transmission: String
    let displacement: String
}
