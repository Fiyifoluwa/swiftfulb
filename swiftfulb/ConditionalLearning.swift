//
//  ConditionalLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 18/09/2022.
//

import SwiftUI

struct ConditionalLearning: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Button("IS LOADING: \(isLoading.description.uppercased())") {
                isLoading.toggle()
            }

            if isLoading {
                ProgressView()
            }

//            Button("Circle Button: \(showCircle.description.uppercased())"){
//                showCircle.toggle()
//            }
//
//            Button("Rectangle Button: \(showRectangle.description.uppercased())"){
//                showRectangle.toggle()
//            }
//
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }

            Spacer()
        }
    }
}

struct ConditionalLearning_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalLearning()
    }
}
