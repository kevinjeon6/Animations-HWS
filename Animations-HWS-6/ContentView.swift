//
//  ContentView.swift
//  Animations-HWS-6
//
//  Created by Kevin Mattocks on 10/16/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.0
    
    
    var body: some View {
            Button {
                
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                    animationAmount += 360
                }
                
            } label: {
                Text("Tap Me")
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(.degrees(animationAmount), axis: (x:0, y: 1, z: 0))
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
 
 
 withAnimation can have a parameter
 */
