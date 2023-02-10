//
//  smallView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI

struct OilView: View {
    var body: some View {
        VStack {
            
            ZStack {
                Rectangle()
                    .foregroundColor(.black)
                    .cornerRadius(10)
               
                VStack{
                    Spacer()
                    Text("Motor Oil")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    
                    HStack(alignment: .center){
                        
                        Text(oil.oilName)
                            .foregroundColor(.white)
                            .font(.title)
                            
                        
                        Gauge(value: Double(147800), in: Double(oil.oilChangeMileage)...Double(oil.nextOilChangeMileage())) {
                            Text("Oil")
                            
                        }
                        .foregroundColor(.white)
                        .tint(.yellow)
                        .gaugeStyle(.accessoryCircularCapacity)
                    }
                        Spacer()
                }
            }

            Spacer()
        }
//        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
   
    }
    
        


struct smallView_Previews: PreviewProvider {
    static var previews: some View {
        OilView()
    }
}
