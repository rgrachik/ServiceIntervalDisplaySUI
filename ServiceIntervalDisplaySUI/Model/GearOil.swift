//
//  GearOil.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import Foundation

class GearOil {
    
    let oilName: String
    let oilVolume: Float
    let oilChangeMileage: Int
    let serviceInterval = 70000
    let oilSAEType = ["ATF", "Multi CVT", "75w-90"]
    
    init(oilName: String, oilVolume: Float, oilChangeMileage: Int) {
        self.oilName = oilName
        self.oilVolume = oilVolume
        self.oilChangeMileage = oilChangeMileage
    }
    
    func nextOilChangeMileage() -> Int {
        oilChangeMileage + serviceInterval
    }
    
    func percentOfWear() -> Int {
        Int(Double(car.currentMileage-oilChangeMileage) / Double(serviceInterval) * 100)
    }
    
}

var gearOil = GearOil(oilName: "Motul", oilVolume: 8, oilChangeMileage: car.currentMileage)
