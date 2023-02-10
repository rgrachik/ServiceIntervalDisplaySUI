//
//  AirView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI

struct AirView: View {
    var body: some View {
        VStack {
            
            ZStack {
                Rectangle()
                    .foregroundColor(Color(red: 0.098, green: 0.098, blue: 0.098))
                    .cornerRadius(10)
                    
//                    .frame(height: 250)
            
                HStack {
                    VStack{
                        Text("Air filter")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        
                        Gauge(value: 0.87, in: 0...1) {
                            Text("Mileage")
                        }
                        .foregroundColor(.white)
                        .tint(.red)
                        .gaugeStyle(.accessoryCircularCapacity)
                        
                    }
                    
                    .padding()
                    
                    
                    VStack{
                        Text("Cabin Filter")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        
                        Gauge(value: 0.34, in: 0...1) {
                            Text("Mileage")
                        }
                        .foregroundColor(.white)
                        .tint(.green)
                        .gaugeStyle(.accessoryCircularCapacity)
                        
                        }
                    
                    .padding()

                }

                
            }
//            .frame(height: 250)
            .padding(5)
            
            Spacer()
        }
    }
}

struct AirView_Previews: PreviewProvider {
    static var previews: some View {
        AirView()
    }
}
