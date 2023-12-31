//
//  RatingView.swift
//  Instafilter
//
//  Created by OLEKSANDR ISAIEV on 31.12.2023.
//
import StoreKit
import SwiftUI

struct RatingView: View {
    @Environment(\.requestReview) var requestReview
    
    var body: some View {
        Button("Leave a review") {
            requestReview()
        }
    }
}

#Preview {
    RatingView()
}
