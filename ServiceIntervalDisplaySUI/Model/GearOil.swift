//
//  GearOil.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import Foundation

class GearOil {
    
    let oilName: String
    let oilVolume: Int
    let oilChangeMileage: Int
    let serviceInterval: Int
    
    init(oilName: String, oilVolume: Int, oilChangeMileage: Int, serviceInterval: Int) {
        self.oilName = oilName
        self.oilVolume = oilVolume
        self.oilChangeMileage = oilChangeMileage
        self.serviceInterval = serviceInterval
    }
    func nextOilChangeMileage() -> Int {
        oilChangeMileage + serviceInterval
    }
    
}
