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
                Text("Engine oil")
                    .padding()
                Spacer()
            }
            HStack {
                Text(oil.oilName)
                    .font(.title)
                    .bold()
                Spacer()
                Text(oil.oilSAEType[2])
                    .font(.title)
            }
            HStack {
                Text("Next change in \(oil.nextOilChangeMileage()-oil.currentMileage) km.")
                    .font(.title2)
                Spacer()
                Gauge (value: Double(oil.currentMileage), in: Double(oil.oilChangeMileage)...Double(oil.nextOilChangeMileage())) {}
                    .foregroundColor(.white)
                    .tint(.orange)
                    .gaugeStyle(.accessoryCircularCapacity)
            }
            .preferredColorScheme(.dark)
        }
    }
    
}

struct SmallOilView_Previews: PreviewProvider {
    static var previews: some View {
        SmallOilView()
    }
}
