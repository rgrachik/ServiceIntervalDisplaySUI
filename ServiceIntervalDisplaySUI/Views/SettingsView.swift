//
//  Second.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI

struct SettingsView: View {
    @Binding var isOnAir: Bool
    @Binding var isOnCabin: Bool
    @Binding var isOnGear: Bool
    @State var picker = 0
    @State var txt = ""
    
    
    var body: some View {
        
        VStack{
            
            
            NavigationStack{
                
                Form {
                    Picker(selection: $picker,
                           content: {ForEach(0..<oil.oilSAEType.count)
                        {Text(oil.oilSAEType[$0])}},
                           label: {Text("Oil Service interval")})
                    
                    if isOnAir{
                        Picker(selection: $picker,
                               content: {},
                               label: {Text("Air filter Service interval")})
                    }
                    if isOnCabin{
                        Picker(selection: $picker,
                               content: {Text("f")},
                               label: {Text("Cabin filter Service interval")})
                    }
                    if isOnGear{
                        Picker(selection: $picker,
                               content: {
                        },
                               label: {Text("Oil Service interval")})
                    }
                }
                .pickerStyle(.menu)
                .frame(height:250)
                Spacer()
                Form {
                    Toggle("Air filter", isOn: $isOnAir)
                    
                    Toggle(isOn: $isOnCabin) {
                        Text("Cabin filter")
                    }
                    Toggle(isOn: $isOnGear) {
                        Text("Gear oil")
                    }
                }
                
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
//    struct Second_Previews: PreviewProvider {
//        static var previews: some View {
//            SettingsView()
//        }
//    }
}
