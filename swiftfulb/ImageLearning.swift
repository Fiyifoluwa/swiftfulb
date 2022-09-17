//
//  ImageLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/08/2022.
//

import SwiftUI

struct ImageLearning: View {
    var body: some View {
        Image("portrait")
//            .renderingMode(.template)
            .resizable()
//            .scaledToFit()
            .scaledToFit()
            .foregroundColor(.red)
//            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200)
//            .cornerRadius(300)
//            .clipShape(Circle ())
//            .clipped()
    }
}

struct ImageLearning_Previews: PreviewProvider {
    static var previews: some View {
        ImageLearning()
    }
}
