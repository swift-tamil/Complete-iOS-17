//
//  MagnificationDemo2.swift
//  Complete iOS 17
//
//  Created by python on 16/11/23.
//

import SwiftUI

struct MagnificationDemo2: View {
    @GestureState private var magnification: CGFloat = 1
    @State private var zoom: CGFloat = 1
    
    
    var body: some View {
        
        Image("green")
            .resizable()
            .scaledToFit()
            .frame(width: 160, height: 200)
            .scaleEffect(getCurrentZoom(magnification: magnification))
            .gesture(
                MagnificationGesture()
                    .updating($magnification){ value, state, transaction in
                        state = value
                    }
                    .onEnded({ value in
                        zoom = getCurrentZoom(magnification: value)
                    })
            )
    }
    
    func getCurrentZoom(magnification: CGFloat) -> CGFloat{
        let minZoom: CGFloat = 1
        let maxZoom: CGFloat = 2
        
        var current = zoom * magnification
        current = max(min(current, maxZoom),minZoom)
        return current
    }
}

#Preview {
    MagnificationDemo2()
}
