//
//  EmptyView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 29.12.2023.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
//        ContentUnavailableView("No smippets",
//                               systemImage: "swift",
//                               description: Text("You don't have any saved snippets yet"))
        ContentUnavailableView {
            Label("No snippets", systemImage: "swift")
        } description: {
            Text("You don't have any saved snippets yet")
        } actions: {
            Button("Create snippet") {
                // create a snippet
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    EmptyView()
}
