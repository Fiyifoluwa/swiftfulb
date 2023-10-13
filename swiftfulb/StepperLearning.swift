//
//  StepperLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 12/10/2023.
//

import SwiftUI

struct StepperLearning: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: Int = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue).padding(50)

            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).frame(width: 100 + CGFloat(widthIncrement), height: 100)

            Stepper("Stepper 2") {
//                increment
                incrementWidth(val: 50)
            } onDecrement: {
                //                decrement
                incrementWidth(val: -100)
            }
        }
    }

    func incrementWidth(val: CGFloat) {
        withAnimation {
            widthIncrement += Int(val)
        }
    }
}

#Preview {
    StepperLearning()
}
