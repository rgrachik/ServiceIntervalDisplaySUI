//
//  SmallOilView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 11.02.2023.
//

import SwiftUI

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
                    .tint(.orange)
                    .gaugeStyle(.accessoryCircularCapacity)
            }
        }
    }
    
}

struct SmallOilView_Previews: PreviewProvider {
    static var previews: some View {
        SmallOilView()
    }
}
