//
//  TimingLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 19/09/2022.
//

import SwiftUI

struct TimingLearning: View {
    @State var isAnimating: Bool = false

    let timing: Double = 10.0

    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.1), value: isAnimating)
//                .animation(Animation.spring(), value: isAnimating)

//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.linear(duration: timing))
        }
    }
}

struct TimingLearning_Previews: PreviewProvider {
    static var previews: some View {
        TimingLearning()
    }
}
