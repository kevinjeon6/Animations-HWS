//
//  ContentView.swift
//  Animations-HWS-6
//
//  Created by Kevin Mattocks on 10/16/22.
//

import SwiftUI

struct ContentView: View {
    
 @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button {
                
                withAnimation {
                    isShowingRed.toggle()
                }
                
                
                
            } label: {
                Text("Tap me")
            }
            
            if isShowingRed {
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
            
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
 
 
 withAnimation can have a parameter
 
 Can attach the animation modifier multiple times but the order matters
 */
