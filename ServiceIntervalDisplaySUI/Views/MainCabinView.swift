//
//  MainCabinView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 12.02.2023.
//

import SwiftUI

struct MainCabinView: View {
    
    var tintColor: Color {
        let value = Int(cabinFilter.percentOfWear())
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
                        
                        Text("Cabin filters")
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
                                Text("\(cabinFilter.filterName)")
                                    .foregroundColor(.white)
                                    .font(.title3)
                            }
                            Spacer()
                        }
                        .padding()
                        List{
                            HStack {
                                Text("Next change in \(cabinFilter.nextFilterChangeMileage()-car.currentMileage) km")
                                Spacer()
                                Gauge(value: Double(car.currentMileage), in: Double(cabinFilter.filterChangeMileage)...Double(cabinFilter.nextFilterChangeMileage())) {Text("Cabin")}
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
                                Text("Cabin filter chaange mil.")
                                    .font(.headline)
                                Spacer()
                                Text("\(cabinFilter.filterChangeMileage) km")
                            }
                            .padding(4)
                            
                            HStack {
                                Text("Next cabin filter change")
                                    .font(.headline)
                                Spacer()
                                Text("\(cabinFilter.nextFilterChangeMileage()) km")
                            }
                            .padding(4)
                            
                          
                        }
                        .formStyle(.columns)
                        .scrollDisabled(true)
                        
                        .padding()
                        Button("Change cabin filter",
                               action: {})
                        .foregroundColor(.accentColor)
                    }
                }
            }
            
        }
        .preferredColorScheme(.dark)
    }
}

struct MainCabinView_Previews: PreviewProvider {
    static var previews: some View {
        MainCabinView()
    }
}
