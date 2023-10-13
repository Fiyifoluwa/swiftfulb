//
//  PickerLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 10/10/2022.
//

import SwiftUI

struct PickerLearning: View {
    @State var selection: String = "18"

    var body: some View {
        VStack {
            HStack {
                Text("Age:")
                Text(selection)
            }
            Picker(selection: $selection) {
                ForEach(18 ..< 100) { number in
                    Text("\(number)").tag("\(number)")
                }
            } label: {
                Text("Picker")
            }
        }
    }
}

struct PickerLearning_Previews: PreviewProvider {
    static var previews: some View {
        PickerLearning()
    }
}
