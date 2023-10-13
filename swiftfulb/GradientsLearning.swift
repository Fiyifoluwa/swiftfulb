//
//  GradientsLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/08/2022.
//

import SwiftUI

struct GradientsLearning: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //                .red
//                LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .topLeading, endPoint: .bottom)
//                RadialGradient(gradient: Gradient(colors: [.orange, .red]), center: .leading, startRadius: 5, endRadius: 220)
//            )
                AngularGradient(gradient: Gradient(colors: [.orange, .red]), center: .topLeading, angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsLearning_Previews: PreviewProvider {
    static var previews: some View {
        GradientsLearning()
    }
}
