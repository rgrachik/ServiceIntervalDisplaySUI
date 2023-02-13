//
//  SmallAirView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 12.02.2023.
//

import SwiftUI

struct SmallAirView: View {
    
    var tintColor: Color {
        let value = Int(airFilter.percentOfWear())
        switch value {
        case 0...60:
            return .green
        case 61...90:
            return .orange
        case 91...100:
            return .red
        default:
            return .gray
        }
    }
    var body: some View {
   
            HStack {
                VStack {
                    HStack {
                        Text("Air filter")
                            .font(.title3)
                        .bold()
                        Spacer()
                    }
                    HStack {
                        Text("\(airFilter.filterName)")
                        Spacer()
                    }
                }
                Spacer()
                Gauge (value: Double(car.currentMileage), in: Double(airFilter.filterChangeMileage)...Double(airFilter.nextFilterChangeMileage())) {Text("\(airFilter.percentOfWear()) %")}
                    .foregroundColor(.white)
                    .tint(tintColor)
                    .gaugeStyle(.accessoryCircularCapacity)
            }
            .preferredColorScheme(.dark)
         
    }
}

struct SmallAirView_Previews: PreviewProvider {
    static var previews: some View {
        SmallAirView()
    }
}
