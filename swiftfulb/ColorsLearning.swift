//
//  ColorsLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/08/2022.
//

import SwiftUI

struct ColorsLearning: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //                Color.primary
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.5), radius: 5, x: 0, y: 5)
    }
}

struct ColorsLearning_Previews: PreviewProvider {
    static var previews: some View {
        ColorsLearning()
    }
}
