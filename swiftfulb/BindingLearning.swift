//
//  BindingLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 18/09/2022.
//

import SwiftUI

struct BindingLearning: View {
    @State var bgColor: Color = .green
    @State var title: String = "Title"

    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)

            VStack {
                Text(title.uppercased())
                    .foregroundColor(.white)
                ButtonView(bgColor: $bgColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    @Binding var bgColor: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String

    var body: some View {
        Button {
            bgColor = .orange
            buttonColor = .pink
            title = "hmmm o porrr"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct BindingLearning_Previews: PreviewProvider {
    static var previews: some View {
        BindingLearning()
    }
}
