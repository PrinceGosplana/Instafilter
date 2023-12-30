//
//   LoadingPhotosView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 30.12.2023.
//

import PhotosUI
import SwiftUI

struct LoadingPhotosView: View {
    @State private var pickerItem: PhotosPickerItem?
    @State private var selectedImage: Image?
    
    var body: some View {
        VStack {
            PhotosPicker("Select a picture", selection: $pickerItem, matching: .images)
        }
    }
}

#Preview {
    LoadingPhotosView()
}
