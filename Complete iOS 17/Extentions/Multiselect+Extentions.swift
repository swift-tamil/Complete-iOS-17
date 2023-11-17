//
//  Multiselect+Extentions.swift
//  Complete iOS 17
//
//  Created by python on 17/11/23.
//

import SwiftUI
import PhotosUI


struct ItemData: Identifiable{
    var id: String
    var image: UIImage
}

class MultiSelectElement: ObservableObject{
    
    @Published var listPictures: [ItemData] = []
    @Published var selected: [PhotosPickerItem] = []
    
    func removeDeselectedItems(){
        listPictures = listPictures.filter { value in
            if selected.contains(where: {$0.itemIdentifier == value.id}){
                return true
            }
            else{
                return false
            }
        }
        
    }
    
//    func addSelectedItems(){
//        for item in _selected {
//            Task(priority: .background){
//                if let data = try? await item
//            }
//        }
//    }
}
