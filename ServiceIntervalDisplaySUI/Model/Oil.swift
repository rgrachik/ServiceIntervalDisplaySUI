//
//  File.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import Foundation

class Oil {
    
    let oilName: String
    let oilVolume: Float
    let oilFilterName: String
    let oilChangeMileage: Int
   
    let serviceInterval = 10000
        init(oilName: String, oilVolume: Float, oilFilterName: String, oilChangeMileage: Int) {
            self.oilName = oilName
            self.oilVolume = oilVolume
            self.oilFilterName = oilFilterName
            self.oilChangeMileage = oilChangeMileage
        }
    
    
    func nextOilChangeMileage() -> Int {
        oilChangeMileage + serviceInterval
    }
    let oilSAEType = ["0w-20", "5w-30", "5w-40", "10w-40"]
   
}


let oil = Oil(oilName: "Mobil", oilVolume: 4.7, oilFilterName: "W67/1", oilChangeMileage: 145000)
