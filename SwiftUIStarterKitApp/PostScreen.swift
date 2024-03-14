//
//  PostScreen.swift
//  SwiftUIStarterKitApp
//
//  Created by Abdul Musa on 01/07/2023.
//  Copyright © 2023 Musa Inc. All rights reserved.
//

import SwiftUI
import AVKit
import UIKit

struct PostScreen: View {
    @State var caption = ""
    @State var hashtags = ""
    @State var location = ""

    var body: some View {
        Form {
            Section(header: Text("Caption")) {
                TextField("Enter caption", text: $caption)
            }
            
            Section(header: Text("Hashtags")) {
                TextField("Enter hashtags", text: $hashtags)
            }
            
            Section(header: Text("Location")) {
                TextField("Enter location", text: $location)
            }
            
            Button("Post Video") {
                // handle video posting here
            }
        }
    }
}

