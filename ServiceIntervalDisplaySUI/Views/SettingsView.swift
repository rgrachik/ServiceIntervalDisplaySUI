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
                HStack{
                    Text("Settings")
                        .font(.largeTitle)
                        .bold()
                        .padding(.leading)
                    Spacer()
                }
                Form {
                    
                    Picker(selection: $picker,
                           content: {Text("f")},
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
            }
        }
    }
    
    struct Second_Previews: PreviewProvider {
        static var previews: some View {
            SettingsView()
        }
    }
}
