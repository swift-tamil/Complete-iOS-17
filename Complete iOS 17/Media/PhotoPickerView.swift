//
//  PhotoPickerView.swift
//  Complete iOS 17
//
//  Created by python on 17/11/23.
//

import SwiftUI
import PhotosUI
import UIKit

struct PhotoPickerView: View {
    
    @State private var selected: PhotosPickerItem?
    @State private var picture: UIImage?
    
    var body: some View {
        NavigationStack{
            VStack{
                Image(uiImage: picture ?? UIImage(named: "green")!)
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    PhotosPicker(selection: $selected,matching: .images, photoLibrary: .shared()) {
                        Text("Select a Photo")
                    }
                }
            }
            .onChange(of: selected) { item in
                Task(priority: .background){
                    if let data = try? await item?.loadTransferable(type: Data.self){
                        picture = UIImage(data: data)
                    }
                }
            }
        }
    }
}

#Preview {
    PhotoPickerView()
}
