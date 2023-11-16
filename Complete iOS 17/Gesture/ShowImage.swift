//
//  ShowImage.swift
//  Complete iOS 17
//
//  Created by python on 16/11/23.
//

import SwiftUI

struct ShowImage: View {
    var body: some View {
        Image("green")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ShowImage()
}
