//
//  GestureDemo3.swift
//  Complete iOS 17
//
//  Created by python on 16/11/23.
//

import SwiftUI

struct GestureDemo3: View {
    @State private var expand: Bool = false
    @State private var allowExpantion: Bool = false
    
    var body: some View {
        
        VStack(spacing:20){
            Image("green")
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 200)
                .onTapGesture {
                    expand = true
                }
                .allowsHitTesting(allowExpantion)
                .sheet(isPresented: $expand, content: {
                    ShowImage()
                })
            Toggle("", isOn: $allowExpantion)
                .labelsHidden()
        }
    }
}

#Preview {
    GestureDemo3()
}
