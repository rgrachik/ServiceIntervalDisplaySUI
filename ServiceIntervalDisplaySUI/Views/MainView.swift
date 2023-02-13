//
//  ContentView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI
struct MainView: View {
    
    @State var isOnAir = true
    @State var isOnCabin = true
    @State var isOnGear = true
    
    var body: some View {
        
        NavigationStack {
            Spacer()
            Text("Current mileage \(car.currentMileage) km")
                .font(.title3)
            List {
                
                    NavigationLink (destination: MainOilView(), label: {SmallOilView()})
                if isOnAir {
                    NavigationLink (destination: MainAirView(), label: {SmallAirView()})
                }
                if isOnCabin {
                    NavigationLink (destination: MainCabinView(), label: {SmallCabinView()})
                }
                if isOnGear {
                    NavigationLink (destination: MainGearOilView(), label: {SmallGearOilView()})
                }
                    NavigationLink(destination: UpdateMileageView(), label: {Text("Update current mileage")
                            .foregroundColor(.accentColor)
                    })
            
                    NavigationLink(destination: SettingsView(isOnAir: $isOnAir, isOnCabin: $isOnCabin, isOnGear: $isOnGear), label: {Button("Settinngs", action: {})})
                
                
            }
            
            .scrollDisabled(true)
  
            .navigationTitle(Text("Service Interval Display"))
        }
        
        .preferredColorScheme(.dark)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
