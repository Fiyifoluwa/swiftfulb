//
//  ContextMenuLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 10/10/2022.
//

import SwiftUI

struct ContextMenuLearning: View {
    @State var bgColor: Color = .purple

    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(bgColor.cornerRadius(30))
        .contextMenu {
            Button {
                bgColor = .yellow
            } label: {
                Label("Share", systemImage: "flame.fill")
            }

            Button {
                bgColor = .red
            } label: {
                Text("Report")
            }

            Button {
                bgColor = .green
            } label: {
                HStack {
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContextMenuLearning_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuLearning()
    }
}
