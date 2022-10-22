//
//  ContentView.swift
//  Animations-HWS-6
//
//  Created by Kevin Mattocks on 10/16/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enabled = false
    
    
    var body: some View {
            Button {
                
                enabled.toggle()
                
            } label: {
                Text("Tap Me")
            }
            .padding(50)
            .background(enabled ? .blue : .red)
            .animation(.default, value: enabled)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
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
 
 Can attach the animation modifier multiple times but the order matters
 */
