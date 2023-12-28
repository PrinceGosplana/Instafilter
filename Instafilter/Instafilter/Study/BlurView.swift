//
//  BlurView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 28.12.2023.
//

import SwiftUI

struct BlurView: View {
    @State private var blurAmount = 0.0
    
    var body: some View {
        Text("Hello, World!")
            .blur(radius: blurAmount)
        Slider(value: $blurAmount, in: 0...20)
        Button("Random Blur") {
            blurAmount = Double.random(in: 0...20)
        }
    }
}

#Preview {
    BlurView()
}
