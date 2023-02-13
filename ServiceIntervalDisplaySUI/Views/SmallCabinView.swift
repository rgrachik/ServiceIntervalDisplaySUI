//
//  SmallCabinView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 12.02.2023.
//

import SwiftUI

struct SmallCabinView: View {
    
    var tintColor: Color {
        let value = Int(cabinFilter.percentOfWear())
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
                    Text("Cabin filter")
                        .font(.title3)
                    .bold()
                    Spacer()
                }
                HStack {
                    Text("\(cabinFilter.filterName)")
                    Spacer()
                }
            }
            Spacer()
            Gauge (value: Double(car.currentMileage), in: Double(cabinFilter.filterChangeMileage)...Double(cabinFilter.nextFilterChangeMileage())) {Text("\(cabinFilter.percentOfWear()) %")}
                .foregroundColor(.white)
                .tint(tintColor)
                .gaugeStyle(.accessoryCircularCapacity)
        }
        .preferredColorScheme(.dark)
    }
}

struct SmallCabinView_Previews: PreviewProvider {
    static var previews: some View {
        SmallCabinView()
    }
}
