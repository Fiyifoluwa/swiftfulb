//
//  StateLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 17/09/2022.
//

import SwiftUI

struct StateLearning: View {
    @State var bgColor: Color = .green
    @State var myTitle: String = "my title"
    @State var count: Int = 0
    @State var space: CGFloat = 20

    var body: some View {
        ZStack {
//            background
            bgColor
                .edgesIgnoringSafeArea(.all)

//            content / foreground
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()

                HStack(spacing: space) {
                    Button("Button 1".uppercased()) {
                        bgColor = .red
                        myTitle = "Button 1 was pressed. E wan piss"
                        count += 1
                        space += 5
                    }

                    Button("Button 2".uppercased()) {
                        bgColor = .purple
                        myTitle = "Button 2  was pressed. E enter like bread"
                        count -= 1
                        space -= 5
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateLearning_Previews: PreviewProvider {
    static var previews: some View {
        StateLearning()
    }
}
