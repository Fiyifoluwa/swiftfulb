//
//  ColorPickerLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 20/09/2023.
//

import SwiftUI

struct ColorPickerLearning: View {
    @State var backgroundColor: Color = .green

    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true).padding().background(Color.black).cornerRadius(10).foregroundColor(.white).font(.headline).padding(50)
        }
    }
}

struct ColorPickerLearning_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerLearning()
    }
}
