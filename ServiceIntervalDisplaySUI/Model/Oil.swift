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
    let oilSAEType = ["0w-10", "0w-20", "5w-30", "5w-40", "10w-40"]
    
    init(oilName: String, oilVolume: Float, oilFilterName: String, oilChangeMileage: Int) {
        self.oilName = oilName
        self.oilVolume = oilVolume
        self.oilFilterName = oilFilterName
        self.oilChangeMileage = oilChangeMileage
    }
    
    func nextOilChangeMileage() -> Int {
        oilChangeMileage + serviceInterval
    }
    
    func percentOfWear() -> Int {
        Int(Double(car.currentMileage-oilChangeMileage) / Double(serviceInterval) * 100)
    }
    
}


var oil = Oil(oilName: "Liqui Molly Optimal", oilVolume: 4.7, oilFilterName: "Mann W67/1", oilChangeMileage: 145000)
