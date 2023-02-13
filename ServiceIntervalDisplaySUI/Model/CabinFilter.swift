//
//  CabinFilter.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import Foundation


class CabinFilter {
    
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
    
}

var cabinFilter = AirFilter(filterName: "Mann CU4590", filterChangeMileage: 145000, serviceInterval: 20000, currentMileage: car.currentMileage)

