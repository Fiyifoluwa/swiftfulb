//
//  ToggleLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 10/10/2022.
//

import SwiftUI

struct ToggleLearning: View {
    @State var toggleIsOn: Bool = false

    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            Toggle(isOn: $toggleIsOn) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .red))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleLearning_Previews: PreviewProvider {
    static var previews: some View {
        ToggleLearning()
    }
}
