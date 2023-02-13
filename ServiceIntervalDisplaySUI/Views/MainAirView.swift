//
//  AirView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI

struct MainAirView: View {
    
    var tintColor: Color {
        let value = Int(airFilter.percentOfWear())
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
            ScrollView {
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
                                Text("\(airFilter.filterName)")
                                    .foregroundColor(.white)
                                    .font(.title3)
                            }
                            Spacer()
                        }
                        .padding()
                        List{
                            HStack {
                                Text("Next change in \(airFilter.nextFilterChangeMileage()-car.currentMileage) km")
                                Spacer()
                                Gauge(value: Double(car.currentMileage), in: Double(airFilter.filterChangeMileage)...Double(airFilter.nextFilterChangeMileage())) {Text("Air")}
                                    .foregroundColor(tintColor)
                                    .tint(tintColor)
                                    .gaugeStyle(.accessoryCircularCapacity)
                            }
                        }
                        .scrollDisabled(true)
                        .cornerRadius(15)
                        .frame(height: 150)
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
                                Text("Air filter chaange mil.")
                                    .font(.headline)
                                Spacer()
                                Text("\(airFilter.filterChangeMileage) km")
                            }
                            .padding(4)
                            
                            HStack {
                                Text("Next air filter change")
                                    .font(.headline)
                                Spacer()
                                Text("\(airFilter.nextFilterChangeMileage()) km")
                            }
                            .padding(4)
                            
                        }
                        .formStyle(.columns)
                        .scrollDisabled(true)
                        
                        .padding()
                        
                        Button("Change air filter",
                               action: {})
                        .foregroundColor(.accentColor)
                    }
                }
            }
            
        }
        .preferredColorScheme(.dark)
    }
}

struct AirView_Previews: PreviewProvider {
    static var previews: some View {
        MainAirView()
    }
}
