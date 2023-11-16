//
//  MagnificationDemo.swift
//  Complete iOS 17
//
//  Created by python on 16/11/23.
//

import SwiftUI

struct MagnificationDemo: View {
    
    @GestureState private var magnification: CGFloat = 1
    @State private var zoom: CGFloat = 1
    
    
    var body: some View {
        
        Image("green")
            .resizable()
            .scaledToFit()
            .frame(width: 160, height: 200)
            .scaleEffect(zoom * magnification)
            .gesture(
                MagnificationGesture()
                    .updating($magnification){ value, state, transaction in
                        state = value
                    }
                    .onEnded({ value in
                        zoom = zoom * value
                    })
            )
    }
}

#Preview {
    MagnificationDemo()
}
