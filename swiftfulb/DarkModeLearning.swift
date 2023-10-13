//
//  DarkModeLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2023.
//

import SwiftUI

struct DarkModeLearning: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20, content: {
                    Text("This is primary").foregroundColor(.primary)
                    Text("This is secondary").foregroundColor(.secondary)
                    Text("This is black").foregroundColor(.black)
                    Text("This is white").foregroundColor(.white)
                    Text("This is adaptive").foregroundColor(Color("AdaptiveColor"))
                    Text("This is locally adaptive").foregroundColor(colorScheme == .light ? .green : .yellow)
                })
            }.navigationTitle("Vibes man")
        }
    }
}

#Preview {
    Group {
        DarkModeLearning().preferredColorScheme(.light)
    }
}
