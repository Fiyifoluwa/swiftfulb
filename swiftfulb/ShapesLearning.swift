//
//  ShapesLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/08/2022.
//

import SwiftUI

struct ShapesLearning: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(.cyan)
//            .foregroundColor(.red)
//            .stroke(Color.red, lineWidth: 4)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
//            .trim(from: 0.4, to: 1)
//            .stroke(.red, lineWidth: 25)
            .frame(width: 300, height: 200)
    }
}

struct ShapesLearning_Previews: PreviewProvider {
    static var previews: some View {
        ShapesLearning()
    }
}
