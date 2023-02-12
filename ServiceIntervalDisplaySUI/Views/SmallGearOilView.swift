//
//  SmallGearOilView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 12.02.2023.
//

import SwiftUI

struct SmallGearOilView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        Text("Gearbox oil")
                            .font(.title2)
                            .bold()
                        Spacer()
                    }
                    
                    HStack {
                        Text(oil.oilName)
                            .font(.title3)
                        Spacer()
                    }
                    
                }
                .preferredColorScheme(.dark)
                
                Gauge (value: Double(car.currentMileage), in: Double(oil.oilChangeMileage)...Double(oil.nextOilChangeMileage())) {Text("\(oil.percentOfWear()) %")}
                    .foregroundColor(.white)
                    .tint(.orange)
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
