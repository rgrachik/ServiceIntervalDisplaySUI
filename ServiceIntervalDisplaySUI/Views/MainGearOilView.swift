//
//  CabinFilter.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI

struct MainGearOilView: View {
    
    var tintColor: Color {
        let value = Int(gearOil.percentOfWear())
        switch value {
        case 0...60:
            return .green
        case 61...90:
            return .orange
        case 91...100:
            return .red
        default:
            return .gray
        }
    }
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    HStack {
                        
                        Text("Gearbox Oil")
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
                                Text(gearOil.oilName)
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .bold()
                            }
                            
                            HStack {
                                Spacer()
                                Text(gearOil.oilSAEType[1])
                            }
                            
                        }
                        .padding()
                        List{
                            HStack {
                                Image("oil")
                                    .colorMultiply(.green)
                                
                                Gauge (value: Double(car.currentMileage), in: Double(gearOil.oilChangeMileage)...Double(gearOil.nextOilChangeMileage())) {}
                                    .foregroundColor(.white)
                                    .tint(tintColor)
                                
                                    .gaugeStyle(.linearCapacity)
                                
                                Image("oil")
                                    .colorMultiply(.red)
                            }
                            HStack {
                                Text("Oil wear:")
                                    .bold()
                                Spacer()
                                Text("\(gearOil.percentOfWear()) %")
                                    .bold()
                                
                            }
                            
                            HStack {
                                Text("Next service in:")
                                    .bold()
                                Spacer()
                                Text("\(gearOil.nextOilChangeMileage()-car.currentMileage) km")
                                    .bold()
                                
                            }
                            
                            
                        }
                        .scrollDisabled(true)
                        .cornerRadius(15)
                        .frame(height: 200)
                        .ignoresSafeArea()
                        .shadow(color: tintColor, radius: 100)
                        
                        
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
                                Text("\(gearOil.oilVolume) L")
                            }
                            .padding(4)
                            
                            HStack {
                                Text("Change mileage")
                                    .font(.headline)
                                Spacer()
                                Text("\(gearOil.oilChangeMileage) km")
                            }
                            .padding(4)
                            
                            HStack {
                                Text("Next change")
                                    .font(.headline)
                                Spacer()
                                Text("\(gearOil.nextOilChangeMileage()) km")
                            }
                            .padding(4)
                        }
                        .formStyle(.columns)
                        .scrollDisabled(true)
                        
                        Spacer()
                        Button("Change oil",
                               action: {})
                        .foregroundColor(.accentColor)
                        
                        
                        
                    }
                    Spacer()
                }
            }
            
            Spacer()
        }
        .preferredColorScheme(.dark)
    }
}

struct CabinFilter_Previews: PreviewProvider {
    static var previews: some View {
        MainGearOilView()
    }
}
