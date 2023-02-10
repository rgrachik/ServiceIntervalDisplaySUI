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
    
    init(filterName: String, filterChangeMileage: Int, serviceInterval: Int) {
        self.filterName = filterName
        self.filterChangeMileage = filterChangeMileage
        self.serviceInterval = serviceInterval
    }
    
    func nextFilterChangeMileage() -> Int {
        filterChangeMileage + serviceInterval
    }
    
}
