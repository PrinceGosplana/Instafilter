//
//  ShareContentView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 30.12.2023.
//

import SwiftUI

struct ShareContentView: View {
    var body: some View {
        /*
        ShareLink(item: URL(string: "https://www.hackingwithswift.com")!,
                  subject: Text("Learn Swift here"),
                  message: Text("Check out the 100 days of SwiftUI")) {
            Label("Spread the word about Swift", systemImage: "swift")
        }
         */
        
        let example = Image(.example)
        
        ShareLink(item: example, preview: SharePreview("Airport", image: example)) {
            Label("Click to share", systemImage: "airplane")
        }
    }
}

#Preview {
    ShareContentView()
}
