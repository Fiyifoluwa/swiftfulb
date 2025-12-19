//
//  AsyncImageLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2024.
//

import SwiftUI

struct AsyncImageLearning: View {
    let url = URL(string: "https://picsum.photos/900")

    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: 100,
                        height: 100
                    )
                    .cornerRadius(25)
            case .failure:
                Image(systemName: "questionmark").font(.headline)
            default:
                Image(systemName: "questionmark").font(.headline)
            }
        }
//        AsyncImage(
//            url: url,
//            content: { returnedImage in returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(
//                    width: 100,
//                    height: 100
//                )
//                .cornerRadius(25)
//            },
//            placeholder: { ProgressView() }
//        )
    }
}

#Preview {
    AsyncImageLearning()
}
