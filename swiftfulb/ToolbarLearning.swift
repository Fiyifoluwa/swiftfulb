//
//  ToolbarLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 06/04/2025.
//

import SwiftUI

struct ToolbarLearning: View {
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack (path: $paths) {
            ZStack {
                Color.white.ignoresSafeArea()

                ScrollView {
                    TextField("Search", text: $text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle().frame(width: 200, height: 200).foregroundColor(.blue)
                    }
//                Text("Hello, World!").foregroundStyle(.white)
                }

            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(leading: Image(systemName: "heart.fill"), trailing: Image(systemName: "gear"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
//                    HStack {
//                        Image(systemName: "house.fill")
                        Image(systemName: "gear")
//                    }
                }
            }
//            .navigationBarHidden(true)
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen"){
                    paths.append("Screen 1")
                }
                Button("Screenz"){
                    paths.append("Screen 2")
                }
                .navigationDestination(for: String.self){ value in
                    Text("Destination: \(value)")
                }
            }
        }
    }
}

#Preview {
    ToolbarLearning()
}
