//
//  SliderLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 12/10/2023.
//

import SwiftUI

struct SliderLearning: View {
    @State var value: Double = 3
    @State var color: Color = .cyan
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", value)
//                "\(value)"
            ).foregroundColor(color)
//            Slider(value: $value)
//            Slider(value: $value, in: 1...5)
//            Slider(value: $value, in: 1...5, step: 1.0)
            Slider(
                value: $value,
                in: 1 ... 5,
                step: 1.0,
                onEditingChanged: { _ in color = .green },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: { Text("Title") }
            ).accentColor(.cyan).padding()
        }
    }
}

#Preview {
    SliderLearning()
}
