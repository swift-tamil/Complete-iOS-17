//
//  GestureDemo5.swift
//  Complete iOS 17
//
//  Created by python on 16/11/23.
//

import SwiftUI

struct GestureDemo5: View {
    
    @State private var expand: Bool = false
    
    var body: some View {
        
        Image("green")
            .resizable()
            .scaledToFit()
            .frame(width: 160, height: 200)
            .gesture(
                TapGesture(count: 1)
                    .onEnded({
                    expand = true
                    })
            )
            .sheet(isPresented: $expand, content: {
                ShowImage()
            })
    }
}

#Preview {
    GestureDemo5()
}
