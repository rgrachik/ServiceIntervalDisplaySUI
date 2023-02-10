//
//  Second.swift
//  ServiceIntervalDisplaySUI
//
//  Created by Роман Грачик on 10.02.2023.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        
        Gauge(value: 0.8,
              label: {Text("1")},
              currentValueLabel: {Text("2")
                .foregroundColor(.blue)
        },
              minimumValueLabel: {Text("3")
                .foregroundColor(.green)
        },
              maximumValueLabel: {Text("4")
                .foregroundColor(.red)
        })
        
        .gaugeStyle(.accessoryCircular)
        .tint(.red)
        
            .padding()
        
    }
    
    struct Second_Previews: PreviewProvider {
        static var previews: some View {
            SecondView()
        }
    }
}
