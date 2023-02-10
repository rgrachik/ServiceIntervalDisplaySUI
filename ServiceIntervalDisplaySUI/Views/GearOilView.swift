//
//  CabinFilter.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI

struct GearOilView: View {
    var body: some View {
        VStack {
            
            ZStack {
                Rectangle()
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    
//                    .frame(height: 250)
            
                VStack{
                    Text("Gear oil")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    
                    Gauge(value: 0.4, in: 0...1) {
                        Text("Mileage")
                    }
                    .foregroundColor(.white)
                    .tint(.cyan)
                    .gaugeStyle(.accessoryCircularCapacity)
                    
                        
                }

                
            }
//            .frame(height: 250)
            .padding(5)
            
            Spacer()
        }
    }
}

struct CabinFilter_Previews: PreviewProvider {
    static var previews: some View {
        GearOilView()
    }
}
