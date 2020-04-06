//
//  VehiclesViewModel.swift
//  Porsche Motorsport
//
//  Created by Giovanni Noa on 4/6/20.
//  Copyright © 2020 Giovanni Noa. All rights reserved.
//

import Foundation

class VehiclesViewModel: ObservableObject {
    @Published var dataSource = [Vehicle]()
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        dataSource = [Vehicle(imageURL: imageURL,
                              detailImageURL: "https://files.porsche.com/filestore/image/multimedia/none/motorsport-racingcars-992-rsr-sideshot/model/3c0f56bc-5319-11ea-80c8-005056bbdc38;sF/porsche-model.png",
                              name: "911 RSR (2019)",
                              power: "Approx. 378kW (515PS), depending on restrictor",
                              engine: "Water-cooled six cylinder boxer engine, positioned in front of the rear axle",
                              weight: "approx. 1,245kg (subject to BOP)",
                              transmission: "Six-speed sequential dog-type transmission, weight optimized",
                              displacement: "4,194cm³"),
                      
                      Vehicle(imageURL: "https://files.porsche.com/filestore/galleryimagerwd/multimedia/none/motorsport-racingcars-991-rsr-2nd-gallery20/zoom2/2bc17db7-866f-11e8-8d30-0019999cd470;sK/porsche-motorsport-image.jpg", detailImageURL: "https://files.porsche.com/filestore/image/multimedia/none/motorsport-racingcars-911-rsr-2nd-sideshot/model/16945b8c-4fc2-11e9-80c4-005056bbdc38;sF/porsche-model.png",
                              name: "911 RSR",
                              power: "Approx. 378kW (515PS), depending on restrictor",
                              engine: "Water-cooled six cylinder boxer engine, positioned in front of the rear axle",
                              weight: "approx. 1,245kg (subject to BOP)",
                              transmission: "Six-speed sequential dog-type transmission, weight optimized",
                              displacement: "4,194cm³"),
                      
                      Vehicle(imageURL: "https://files.porsche.com/filestore/galleryimagerwd/multimedia/none/motorsport-racingcars-991-2nd-gt3-r-gallery-04/zoom2/84747d4a-538f-11e8-bbc5-0019999cd470;sK/porsche-motorsport-image.jpg", detailImageURL: "https://files.porsche.com/filestore/image/multimedia/none/motorsport-modelpage-991-2nd-gt3-r-sideshot/model/76376f91-a5d8-11e8-8d30-0019999cd470;sF/porsche-model.png",
                              name: "911 GT3 R (2019)",
                              power: "Approx. 378kW (515PS), depending on restrictor",
                              engine: "Water-cooled six cylinder boxer engine, positioned in front of the rear axle",
                              weight: "approx. 1,245kg (subject to BOP)",
                              transmission: "Six-speed sequential dog-type transmission, weight optimized",
                              displacement: "4,194cm³"),
                      
                      Vehicle(imageURL: "https://files.porsche.com/filestore/galleryimagerwd/multimedia/none/motorsport-racingcars-991-2nd-gt3-cup-gallery-29/preview/e5cec05b-1448-11e7-8503-0019999cd470/porsche-motorsport-image.jpg", detailImageURL: "https://files.porsche.com/filestore/image/multimedia/none/motorsport-991-2nd-gt3-cup-sideshot/model/740e6082-f565-11e9-80c6-005056bbdc38;sF/porsche-model.png",
                              name: "911 GT3 Cup",
                              power: "Approx. 378kW (515PS), depending on restrictor",
                              engine: "Water-cooled six cylinder boxer engine, positioned in front of the rear axle",
                              weight: "approx. 1,245kg (subject to BOP)",
                              transmission: "Six-speed sequential dog-type transmission, weight optimized",
                              displacement: "4,194cm³"),
                      
                      Vehicle(imageURL: "https://files.porsche.com/filestore/galleryimagerwd/multimedia/none/motorsport-racingcars-991-2nd-gt2-rs-cs-gallery-07/zoom2/3467cbd2-f222-11e8-bec8-0019999cd470;sK/porsche-motorsport-image.jpg", detailImageURL: "https://files.porsche.com/filestore/image/multimedia/none/motorsport-modelpage-991-2nd-gt2-rs-cs-techspecs-sideshot/model/6eae795d-f23c-11e8-bec8-0019999cd470;sF/porsche-model.png",
                              name: "911 GT2 RS Clubsport",
                              power: "Approx. 378kW (515PS), depending on restrictor",
                              engine: "Water-cooled six cylinder boxer engine, positioned in front of the rear axle",
                              weight: "approx. 1,245kg (subject to BOP)",
                              transmission: "Six-speed sequential dog-type transmission, weight optimized",
                              displacement: "4,194cm³"),
                      
                      Vehicle(imageURL: "https://files.porsche.com/filestore/galleryimagerwd/multimedia/none/motorsport-racingcars-982-718-c7-gt4-cs-gallery-30/zoom2/e129ec07-feeb-11e8-8373-0019999cd470;sK/porsche-motorsport-image.jpg", detailImageURL: "https://files.porsche.com/filestore/image/multimedia/none/motorsport-racingcars-982-718-c7-gt4-cs-techspecs-sideshot/model/399d9e05-fed7-11e8-8373-0019999cd470;sF/porsche-model.png",
                              name: "718 Cayman GT4 Clubsport",
                              power: "Approx. 378kW (515PS), depending on restrictor",
                              engine: "Water-cooled six cylinder boxer engine, positioned in front of the rear axle",
                              weight: "approx. 1,245kg (subject to BOP)",
                              transmission: "Six-speed sequential dog-type transmission, weight optimized",
                              displacement: "4,194cm³")]
    }
}
