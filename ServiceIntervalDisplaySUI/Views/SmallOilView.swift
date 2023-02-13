//
//  SmallOilView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 11.02.2023.
//

import SwiftUI

var tintColor: Color {
    let value = Int(oil.percentOfWear())
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

struct SmallOilView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        Text("Engine oil")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    
                    HStack {
                        Text(oil.oilName)
                        Spacer()
                    }
                    
                }
                .preferredColorScheme(.dark)
                
                Gauge (value: Double(car.currentMileage), in: Double(oil.oilChangeMileage)...Double(oil.nextOilChangeMileage())) {Text("\(oil.percentOfWear()) %")}
                    .foregroundColor(.white)
                    .tint(tintColor)
                }
                    .gaugeStyle(.accessoryCircularCapacity)
            }
        }
    }
    


struct SmallOilView_Previews: PreviewProvider {
    static var previews: some View {
        SmallOilView()
    }
}
