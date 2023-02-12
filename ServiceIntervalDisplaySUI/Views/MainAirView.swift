//
//  AirView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI

struct MainAirView: View {
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    HStack {
                        
                        Text("Air filters")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
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
                                Image("cabin")
                                    .colorMultiply(.green)
                                
                                Gauge(value: Double(149800), in: Double(oil.oilChangeMileage)...Double(oil.nextOilChangeMileage())) {}
                                    .foregroundColor(.white)
                                    .tint(.blue)
                                    .gaugeStyle(.linearCapacity)
                                
                                Image("cabin")
                                    .colorMultiply(.red)
                            }
                            
                        }
                        .scrollDisabled(true)
                        .cornerRadius(15)
                        .frame(height: 200)
                        .ignoresSafeArea()
                        .shadow(color: .blue, radius: 100)
                        
                        .padding()
                        
                        HStack {
                            Text("Detail")
                                .font(.title)
                            
                            Spacer()
                        }
                        .padding()
                        Divider()
                        Form {
                            HStack {
                                Text("Oil volume")
                                    .font(.headline)
                                Spacer()
                                Text("\(oil.oilVolume) L.")
                            }
                            .padding(4)
                            
                            HStack {
                                Text("Change mileage")
                                    .font(.headline)
                                Spacer()
                                Text("\(oil.oilChangeMileage) km.")
                            }
                            .padding(4)
                            
                            HStack {
                                Text("Next change")
                                    .font(.headline)
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
        .preferredColorScheme(.dark)
    }
    
}

struct AirView_Previews: PreviewProvider {
    static var previews: some View {
        MainAirView()
    }
}
