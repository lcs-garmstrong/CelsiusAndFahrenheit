//
//  Calculator View.swift
//  CelsiusAndFahrenheit
//
//  Created by Graeme Armstrong on 2023-01-18.
//

import SwiftUI

struct Calculator_View: View {
    
    // MARK: Stored properties
    @State var fahrenheit: Double = 0
    
    //    @State var celcius: Double = 0
  
    // MARK: computed properties
    var celsius: Double {
        return (fahrenheit - 32) * 5/9
    }
    
//    var farenheit: Double {
//        return (celsius * 9/5) + 32
//    }
    
    
    // MARK: User interface.
    var body: some View {
        VStack {
            Text("Fahrenheit")
                .bold()
                .font(.title2)
            Text("\(fahrenheit)")
            
            Slider(value: $fahrenheit,
                   in: -150...150,
                   label: {Text("Farenheit")},
                   minimumValueLabel: {Text("0")},
                   maximumValueLabel: {Text("100")})
            
            Text("Celcius")
                .bold()
                .font(.title2)
            Text("\(celsius)")
            
            //          Slider(value: $celcius,
            //                   in: -150...150,
            //                   label: {Text("celcius")},
            //                   minimumValueLabel: {Text("0")},
            //                   maximumValueLabel: {Text("100")})
            
        }
        .padding()
    }
}

struct Calculator_View_Previews: PreviewProvider {
    static var previews: some View {
        Calculator_View()
    }
}
