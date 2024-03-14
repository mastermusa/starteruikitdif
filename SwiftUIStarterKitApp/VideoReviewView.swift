//
//  VideoReviewView.swift
//  SwiftUIStarterKitApp
//
//  Created by Abdul Musa on 30/06/2023.
//  Copyright © 2023 Musa Inc. All rights reserved.
//

import SwiftUI

struct VideoReviewView: View {
    var body: some View {
        VStack {
            // Replace this with your actual video review and edit view
            Rectangle()
                .fill(Color.gray)
                .aspectRatio(3/4, contentMode: .fit)

            Button(action: {
                // Handle upload button click
            }) {
                Text("Upload")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}
