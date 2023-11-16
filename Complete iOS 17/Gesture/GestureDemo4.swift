//
//  GestureDemo4.swift
//  Complete iOS 17
//
//  Created by python on 16/11/23.
//

import SwiftUI

struct GestureDemo4: View {
    
    @State private var selected:Bool = false
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("green")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 100)
                    .border(selected ? .yellow : .clear, width: 5)
                
                VStack(alignment: .leading, spacing: 2){
                    Text("Balmy beach")
                        .bold()
                    Text("Toronto")
                    Text("2020")
                        .font(.caption)
                    Spacer()
                }
                Spacer()
            }
            .frame(height: 100)
            .padding(5)
            .border(.gray, width: 1)
            .contentShape(Rectangle())
            .onTapGesture {
                selected.toggle()
            }
            Spacer()
        }
        
        
    }
}

#Preview {
    GestureDemo4()
}
