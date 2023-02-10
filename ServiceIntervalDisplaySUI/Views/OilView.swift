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
//                    .foregroundColor(Color(red: 0.098, green: 0.098, blue: 0.098))
                    .foregroundColor(.black)
                    .cornerRadius(10)
                
                VStack{
                    HStack{
                        
                        Text("Motor Oil")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .padding()
                        Spacer()
                    }
                                        
                    VStack {
                        VStack{
                            HStack {
                                Spacer()
                                Text(oil.oilName)
                                    .foregroundColor(.white)
                                    .font(.title)
                            }
                            
                            HStack {
                                Spacer()
                                Text(oil.oilSAEType[0])
                            }
                            
                            
                            
                        }
                        .padding()
                        List{
                            HStack {
                                    Image("oil")
                                        .colorMultiply(.green)
                                
                                Gauge(value: Double(149800), in: Double(oil.oilChangeMileage)...Double(oil.nextOilChangeMileage())) {}
                                .foregroundColor(.white)
                                .tint(.orange)
                                .gaugeStyle(.linearCapacity)
                                
                                Image("oil")
                                    .colorMultiply(.red)
                            }
                            
                            
                        }
                        .scrollDisabled(true)
                        .cornerRadius(15)
                        .frame(height: 200)
                        .ignoresSafeArea()
                        .shadow(color: .orange, radius: 100)
                        
                       
                        .padding()
                       
                        
                        HStack {
                            Text("Parameters")
                                .font(.title2)
                           
                            Spacer()
                        }
                        Form {
                            HStack {
                                Text("Oil volume")
                                    .font(.title3)
                                Spacer()
                                Text("\(oil.oilVolume) L.")
                            }
                            .padding(4)
                            
                            HStack {
                                Text("Change mileage")
                                    .font(.title3)
                                Spacer()
                                Text("\(oil.oilChangeMileage) km.")
                            }
                            .padding(4)
                            
                            HStack {
                                Text("Next change")
                                    .font(.title3)
                                Spacer()
                                Text("\(oil.nextOilChangeMileage()) km.")
                            }
                            .padding(4)
                            
                        }
                        .formStyle(.columns)
                        .scrollDisabled(true)
                        
                        
                        
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
