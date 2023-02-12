//
//  smallView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI

struct MainOilView: View {
    
    let gradient = Gradient(colors: [.green, .red])
    
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    HStack {
                        
                        Text("Motor Oil")
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
                                    .bold()
                            }
                            
                            HStack {
                                Spacer()
                                Text(oil.oilSAEType[3])
                            }
                            
                        }
                        .padding()
                        List{
                            HStack {
                                Image("oil")
                                    .colorMultiply(.green)
                                
                                Gauge (value: Double(oil.currentMileage), in: Double(oil.oilChangeMileage)...Double(oil.nextOilChangeMileage())) {}
                                    .foregroundColor(.white)
//                                    .tint(.orange)
                                    .tint(gradient)
                                    .gaugeStyle(.linearCapacity)
                                
                                Image("oil")
                                    .colorMultiply(.red)
                            }
                            HStack {
                                Text("Oil wear:")
                                    .bold()
                               Spacer()
                                Text("\(oil.percentOfWear()) %")
                                    .bold()
                                
                            }
                            
                            HStack {
                                Text("Next service in:")
                                    .bold()
                                Spacer()
                                Text("\(oil.nextOilChangeMileage()-oil.currentMileage) km.")
                                    .bold()
                                
                            }
                            
                            
                        }
                        .scrollDisabled(true)
                        .cornerRadius(15)
                        .frame(height: 200)
                        .ignoresSafeArea()
                        .shadow(color: .orange, radius: 100)
                        
                        
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
                                
                                Text("Oil filter")
                                    .font(.headline)
                                Spacer()
                                Text("\(oil.oilFilterName)")
                            }
                            .padding(4)
                            
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




struct MainOilView_Previews: PreviewProvider {
    static var previews: some View {
        MainOilView()
    }
}
