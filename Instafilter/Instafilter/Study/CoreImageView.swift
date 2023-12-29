//
//  CoreImageView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 29.12.2023.
//

import SwiftUI

struct CoreImageView: View {
    @State private var image: Image?
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear(perform: loadImage)
    }
    
    private func loadImage() {
        image = Image(.example)
    }
}

#Preview {
    CoreImageView()
}
