//
//  BackgroundMaterialsLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2024.
//

import SwiftUI

struct BackgroundMaterialsLearning: View {
    var body: some View {
        VStack {
            Spacer()

            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding(15)
                Spacer()
            }.frame(height: 350)
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            AsyncImage(url: URL(string: "https://picsum.photos/1000/1000")!)
        )
    }
}

#Preview {
    BackgroundMaterialsLearning()
}
