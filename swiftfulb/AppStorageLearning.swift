//
//  AppStorageLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2024.
//

import SwiftUI

struct AppStorageLearning: View {
    @AppStorage("name") var currentUserName: String?

    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")

            if let name = currentUserName {
                Text(name)
            }

            Button("Save".uppercased()) {
                let name = "SwiftUI"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageLearning()
}
