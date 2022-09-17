//
//  FrameLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 08/09/2022.
//

import SwiftUI

struct FrameLearning: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.green)
//        stuff before the frame is the content that's nside the frame
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center )
//            .frame(width: 300, height: 300, alignment: .center)
//            .background(Color.red)
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct FrameLearning_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FrameLearning()
        }
    }
}
