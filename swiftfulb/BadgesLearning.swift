//
//  BadgesLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2024.
//

import SwiftUI

// only for lists and tab views

struct BadgesLearning: View {
    var body: some View {
        List {
            Text("Hello, World!")
                .badge("NEW!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }
//        TabView {
//            Color.pink
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Pink")
//                }
//                .badge("NEW")
//
//            Color.blue
//                .tabItem { Image(systemName: "heart.fill")
//                    Text("Blue")
//                }
//
//            Color.yellow
//                .tabItem { Image(systemName: "heart.fill")
//                    Text("Yellow")
//                }
//        }
    }
}

#Preview {
    BadgesLearning()
}
