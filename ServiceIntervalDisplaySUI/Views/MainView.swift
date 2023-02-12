//
//  ContentView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI
struct MainView: View {
    
    var body: some View {
     
        NavigationStack {
            Spacer()
            Image("oil")
                Form{
                    NavigationLink (destination: MainOilView(), label: {SmallOilView()})
                
                    NavigationLink (destination: MainAirView(), label: {SmallAirView()})
           
                    NavigationLink (destination: MainCabinView(), label: {SmallCabinView()})
                      }
                
            .scrollDisabled(true)
                
                HStack{
                    NavigationLink("Setttings", destination: SettingsView())
                    
                      
                        .frame(width: 80, height: 40)
                        .background(Color.cyan)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                    
                    Button("Update", action: {})
                        .frame(width: 80, height: 40)
                        .background(Color.green)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
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
