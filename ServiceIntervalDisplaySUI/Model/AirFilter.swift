//
//  AirFilter.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import Foundation

class AirFilter {
    
    let filterName: String
    let filterChangeMileage: Int
    let serviceInterval: Int
    let currentMileage: Int
    
    init(filterName: String, filterChangeMileage: Int, serviceInterval: Int, currentMileage: Int) {
        self.filterName = filterName
        self.filterChangeMileage = filterChangeMileage
        self.serviceInterval = serviceInterval
        self.currentMileage = currentMileage
    }
    
    func nextFilterChangeMileage() -> Int {
        filterChangeMileage + serviceInterval
    }
    func percentOfWear() -> Int {
        Int(Double(car.currentMileage-filterChangeMileage) / Double(serviceInterval) * 100)
    }
    
}

var airFilter = AirFilter(filterName: "Mann C26590", filterChangeMileage: 145000, serviceInterval: 10000, currentMileage: 146000)
