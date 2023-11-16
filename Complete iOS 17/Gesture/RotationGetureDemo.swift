//
//  RotationGetureDemo.swift
//  Complete iOS 17
//
//  Created by python on 16/11/23.
//

import SwiftUI

struct RotationGetureDemo: View {
    @GestureState private var rotationAngle: Angle = Angle.zero
    @State private var rotation: Angle = Angle.zero
    
    
    var body: some View {
        
        Image("green")
            .resizable()
            .scaledToFit()
            .frame(width: 160, height: 200)
            .rotationEffect(rotation + rotationAngle)
            .gesture(
                RotationGesture()
                    .updating($rotationAngle){ value, state, transaction in
                        state = value
                    }
                    .onEnded({ value in
                        rotation = rotation + value
                    })
            )
    }
    
}

#Preview {
    RotationGetureDemo()
}
