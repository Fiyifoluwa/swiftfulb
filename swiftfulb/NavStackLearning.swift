//
//  NavStackLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 06/04/2025.
//

import SwiftUI

struct NavStackLearning: View {
    let fruits = ["Apple", "Orange", "Banana", "Mango"]

    @State private var stackPath: [String] = []

    var body: some View {
//        NavigationStack {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 16) {
                    
                    Button("Segue") {
                        stackPath.append(contentsOf: [
                            "Coconut", "Watermelon"
                        ])
                    }
//                    Button("Segue") {
//                        stackPath.append("Segue")
//                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }

                    ForEach(0 ..< 10) { x in
                        NavigationLink(value: x) {
                            Text("Link: \(x)")
                        }
                    }
                }
                .navigationTitle("Learning")
                .navigationDestination(for: Int.self) { value in
                    MySecondScreen(value: value)
                }
                .navigationDestination(for: String.self) { value in
                    Text("Another Screen: \(value)")
                }
            }
        }
    }
}

struct MySecondScreen: View {
    let value: Int

    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }

    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavStackLearning()
}
