//
//  Second.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI

struct SettingsView: View {
    @State var isOn = true
    @State var picker = 0
    
    var body: some View {
        
        VStack{
         
            
            NavigationStack{
              
                Form {
                    
                    Picker(selection: $picker,
                           content: {},
                           label: {Text("Oil Service interval")})
                    
                    Picker(selection: $picker,
                           content: {},
                           label: {Text("Air filter Service interval")})
                    
                    Picker(selection: $picker,
                           content: {Text("f")},
                           label: {Text("Cabin filter Service interval")})
                    
                }
                .pickerStyle(.navigationLink)
//                .frame(height:200)
                Spacer()
                
                    .navigationTitle(Text("Settings"))
                    .navigationBarTitleDisplayMode(.large)
            }
        }
    }
    
    struct Second_Previews: PreviewProvider {
        static var previews: some View {
            SettingsView()
        }
    }
}
