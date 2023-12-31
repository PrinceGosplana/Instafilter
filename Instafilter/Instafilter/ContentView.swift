//
//  ContentView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 28.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var processedImage: Image?
    @State private var filterIntensity = 0.5
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Spacer()
                HStack {
                    Text("Intensity")
                    Slider(value: $filterIntensity)
                }
                HStack {
                    Button("Change filter") {
                        
                    }
                    Spacer()
                }
            }
            .padding([.horizontal, .bottom])
            .navigationTitle("Instafilter")
        }
    }
}

#Preview {
    ContentView()
}
