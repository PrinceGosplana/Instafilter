//
//  CoreImageView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 29.12.2023.
//

import CoreImage
import CoreImage.CIFilterBuiltins
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
        let inputImage = UIImage(resource: .example)
        let beginImage = CIImage(image: inputImage)
        
        let context = CIContext()
//        let currentFilter = CIFilter.sepiaTone()
        let currentFilter = CIFilter.pixellate()

        currentFilter.inputImage = beginImage
//        currentFilter.intensity = 1
        currentFilter.scale = 20
        
        guard let outputImage = currentFilter.outputImage else { return }
        guard let cgImage = context.createCGImage(outputImage, from: outputImage.extent) else { return }
        
        let uiImage = UIImage(cgImage: cgImage)
        image = Image(uiImage: uiImage)
    }
}

#Preview {
    CoreImageView()
}
