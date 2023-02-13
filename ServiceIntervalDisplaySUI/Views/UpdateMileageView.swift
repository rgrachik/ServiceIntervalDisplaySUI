//
//  UpdateMileageView.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 13.02.2023.
//

import SwiftUI

struct UpdateMileageView: View {
    @State private var textfieldData = ""
    var body: some View {
       
        HStack {
            TextField("\(car.currentMileage)", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .textFieldStyle(.roundedBorder)
                
            
            .padding()
        }
        .padding(30)
    }
        
}


struct UpdateMileageView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateMileageView()
    }
}
