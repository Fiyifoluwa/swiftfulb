//
//  AnimationLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 19/09/2022.
//

import SwiftUI

struct AnimationLearning: View {
    @State var isAnimated: Bool = false

    var body: some View {
        VStack {
            Button("isAnimated: \(isAnimated.description.uppercased())") {
                withAnimation(
                    Animation
                        .default
                        .repeatForever(autoreverses: true)
                ) {
                    isAnimated.toggle()
                }
//                isAnimated.toggle()
            }

            Spacer()

            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .opacity(isAnimated ? 0.3 : 1)
                .offset(y: isAnimated ? 300 : 0)
//                .animation(Animation
//                    .default
//                        .repeatForever(autoreverses: true))

            Spacer()
        }
    }
}

struct AnimationLearning_Previews: PreviewProvider {
    static var previews: some View {
        AnimationLearning()
    }
}
