//
//  SmallGearOilView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 12.02.2023.
//

import SwiftUI

struct SmallGearOilView: View {
    var tintColor: Color {
        let value = Int(gearOil.percentOfWear())
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
        VStack {
            HStack {
                VStack {
                    HStack {
                        Text("Gearbox oil")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    
                    HStack {
                        Text(gearOil.oilName)
                        Spacer()
                    }
                    
                }
                .preferredColorScheme(.dark)
                
                Gauge (value: Double(car.currentMileage), in: Double(gearOil.oilChangeMileage)...Double(gearOil.nextOilChangeMileage())) {Text("\(gearOil.percentOfWear()) %")}
                    .foregroundColor(.white)
                    .tint(tintColor)
                    .gaugeStyle(.accessoryCircularCapacity)
            }
        }
    }
}

struct SmallGearOilView_Previews: PreviewProvider {
    static var previews: some View {
        SmallGearOilView()
    }
}
