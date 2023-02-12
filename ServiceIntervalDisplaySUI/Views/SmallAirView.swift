//
//  SmallAirView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 12.02.2023.
//

import SwiftUI

struct SmallAirView: View {
    var body: some View {
   
            HStack {
                VStack {
                    HStack {
                        Text("Air filter")
                            .font(.title2)
                        .bold()
                        Spacer()
                    }
                    HStack {
                        Text("\(airFilter.filterName)")
                            .font(.title3)
                        Spacer()
                    }
                }
                Spacer()
                Gauge (value: Double(car.currentMileage), in: Double(airFilter.filterChangeMileage)...Double(airFilter.nextFilterChangeMileage())) {Text("\(airFilter.percentOfWear()) %")}
                    .foregroundColor(.white)
                    .tint(.blue)
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
