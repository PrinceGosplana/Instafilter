//
//  ContentView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 28.12.2023.
//

import PhotosUI
import SwiftUI

struct ContentView: View {
    @State private var processedImage: Image?
    @State private var filterIntensity = 0.5
    @State private var selectedItem: PhotosPickerItem?
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                PhotosPicker(selection: $selectedItem) {
                    if let processedImage {
                        processedImage
                            .resizable()
                            .scaledToFit()
                    } else {
                        ContentUnavailableView("No picture", systemImage: "photo.badge.plus", description: Text("Tap to import a photo"))
                    }
                }
                .buttonStyle(.plain)
                
                Spacer()
                HStack {
                    Text("Intensity")
                    Slider(value: $filterIntensity)
                }
                HStack {
                    Button("Change filter", action: changeFilter)
                    Spacer()
                }
            }
            .padding([.horizontal, .bottom])
            .navigationTitle("Instafilter")
        }
    }
    
    private func changeFilter() {
        
    }
}

#Preview {
    ContentView()
}
