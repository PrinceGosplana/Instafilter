//
//  EmptyView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 29.12.2023.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        ContentUnavailableView("No smippets",
                               systemImage: "swift",
                               description: Text("You don't have any saved snippets yet"))
    }
}

#Preview {
    EmptyView()
}
