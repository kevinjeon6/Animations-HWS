//
//  ContentView.swift
//  Animations-HWS-6
//
//  Created by Kevin Mattocks on 10/16/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    
    var body: some View {
     print(animationAmount)
         return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
            Spacer()
            
            Button {
                animationAmount += 1
            } label: {
                Text("Tap Me")
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)

            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



/*
 animation modifier applies a default animation to the button view whenever the animationAmount chagnes
 
 Add blur modifier. When each tap of the button, the blur increases
 */
