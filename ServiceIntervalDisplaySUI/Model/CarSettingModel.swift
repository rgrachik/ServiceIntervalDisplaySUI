//
//  CarSettingModel.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 12.02.2023.
//

import Foundation

class CarSettings {
    var currentMileage: Int
    
    init(currentMileage: Int) {
        self.currentMileage = currentMileage
    }
    
    
}

var car = CarSettings(currentMileage: 153450)
