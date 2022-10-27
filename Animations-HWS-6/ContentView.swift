//
//  ContentView.swift
//  Animations-HWS-6
//
//  Created by Kevin Mattocks on 10/16/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var dragAmount = CGSize.zero
    //CGSize is core graphics size and zero means no height or width.
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
            DragGesture()
                .onChanged({ dragAmount = $0.translation})
            //The translation is the drag which tells us how far it's moved from the start point
                .onEnded({ _ in
                    //Explicit animation in the onEnded modifier
                    
                    withAnimation {
                        dragAmount = .zero
                    }
                    
                })
            )
        //Implicit animation is with the animation modifier
//            .animation(.spring(), value: dragAmount)
    
            
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
