//
//  IconsLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/08/2022.
//

import SwiftUI

struct IconsLearning: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
//            .resizable()
//            .scaledToFit()
            .scaledToFill()
//            .aspectRatio(contentMode: .fit)
        // there is a .fill that could escape the frame
            .font(.largeTitle)
//            .font(.system(size: 200))
//            .foregroundColor(.red)
            .frame(width: 300, height: 300, alignment: .center)
//            .clipped()
    }
}

struct IconsLearning_Previews: PreviewProvider {
    static var previews: some View {
        IconsLearning()
    }
}
