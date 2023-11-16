//
//  GestureDemo1.swift
//  Complete iOS 17
//
//  Created by python on 16/11/23.
//

import SwiftUI

struct GestureDemo1: View {
    
    @State private var expand: Bool = false
    
    var body: some View {
        
        Image("green")
            .resizable()
            .scaledToFit()
            .frame(width: 160, height: 200)
            .onTapGesture {location in
                expand = true
                print("Location: \(location)")
            }
            .sheet(isPresented: $expand, content: {
                ShowImage()
            })
    }
}


#Preview {
    GestureDemo1()
}
