//
//  SmallAirView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 12.02.2023.
//

import SwiftUI

struct SmallAirView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(oil.oilName)
                        .font(.title)
                        .bold()
                    Text("Next change in \(oil.nextOilChangeMileage()-oil.currentMileage) km.")
                        .font(.title2)
                }
                Spacer()
                Gauge (value: Double(oil.currentMileage), in: Double(oil.oilChangeMileage)...Double(oil.nextOilChangeMileage())) {}
                    .foregroundColor(.white)
                    .tint(.blue)
                    .gaugeStyle(.accessoryCircularCapacity)
            }
            .preferredColorScheme(.dark)
            
            HStack {
                VStack {
                    Text(oil.oilName)
                        .font(.title)
                        .bold()
                    Text("Next change in \(oil.nextOilChangeMileage()-oil.currentMileage) km.")
                        .font(.title2)
                }
                Spacer()
                Gauge (value: Double(oil.currentMileage), in: Double(oil.oilChangeMileage)...Double(oil.nextOilChangeMileage())) {}
                    .foregroundColor(.white)
                    .tint(.cyan)
                    .gaugeStyle(.accessoryCircularCapacity)
            }
            .preferredColorScheme(.dark)
            
        }
        
    }
}

struct SmallAirView_Previews: PreviewProvider {
    static var previews: some View {
        SmallAirView()
    }
}
