//
//  TextLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/08/2022.
//

import SwiftUI

struct TextLearning: View {
    var body: some View {
        Text("Hello, my name is Fiyi")
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
            ////            .underline()
//            .italic()
//            .strikethrough()
//            .underline(true, color: Color.cyan)
//            .strikethrough(true, color: Color.indigo)
//            .font(.system(size: 40, weight: .semibold, design: .serif))
//            .baselineOffset(10)
//        baselineOffset is basically line height in css. It can take a negative value that adds the spacing above the text instead
//            .kerning(1)
//        kerning is basically letter spacing in css
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
//        frame is the container where the text resides
            .minimumScaleFactor(0.6)
    }
}

struct TextLearning_Previews: PreviewProvider {
    static var previews: some View {
        TextLearning()
    }
}
