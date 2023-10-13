//
//  TernaryLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 19/09/2022.
//

import SwiftUI

struct TernaryLearning: View {
    @State var isStartingState: Bool = false

    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description.uppercased())") {
                isStartingState.toggle()
            }

            Text(isStartingState ? "Starting state" : "Ending State")

            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(width: isStartingState ? 200 : 50, height: isStartingState ? 400 : 50)

            Spacer()
        }
    }
}

struct TernaryLearning_Previews: PreviewProvider {
    static var previews: some View {
        TernaryLearning()
    }
}
