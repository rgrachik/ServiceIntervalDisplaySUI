//
//  ContentView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI
struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            VStack{
                
                OilView()
                    .padding(4)
                AirView()
                GearOilView()
                
                HStack{
                    NavigationLink("Setttings", destination: SettingsView())
                    
                        .navigationTitle(Text("Service Interval Display"))
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
            }
            
        }
        
        .preferredColorScheme(.dark)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
