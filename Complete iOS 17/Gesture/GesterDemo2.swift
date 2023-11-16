//
//  GesterDemo2.swift
//  Complete iOS 17
//
//  Created by python on 16/11/23.
//

import SwiftUI

struct GesterDemo2: View {
    @State private var expand: Bool = false
    @State private var pressing: Bool = false
    
    var body: some View {
        
        Image("green")
            .resizable()
            .scaledToFit()
            .frame(width: 160, height: 200)
            .opacity(pressing ? 0 : 1)
            .onLongPressGesture(perform: {
                expand = true
            }, onPressingChanged: { value in
                withAnimation(.easeInOut(duration: 1.5)) {
                    pressing = value
                }
            })
            .sheet(isPresented: $expand, content: {
                ShowImage()
            })
    }
}

#Preview {
    GesterDemo2()
}
