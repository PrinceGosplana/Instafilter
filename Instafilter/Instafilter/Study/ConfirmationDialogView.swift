//
//  ConfirmationDialogView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 28.12.2023.
//

import SwiftUI

struct ConfirmationDialogView: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        Button("Hello, world!") {
            showingConfirmation.toggle()
        }
        .frame(width: 300, height: 300)
        .background(backgroundColor)
    }
}

#Preview {
    ConfirmationDialogView()
}
