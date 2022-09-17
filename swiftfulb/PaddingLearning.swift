//
//  PaddingLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 10/09/2022.
//

import SwiftUI

struct PaddingLearning: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)

            
            Text("This is the description of what we will do on the screen. It is multuple lines and we will align the text to the leading edge.")
            
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.3),
                                        radius: 10,
                                        x: 0,
                                        y: 10))
        .padding(.horizontal, 10)
        
        
        
//            .background(Color.white)
//            .padding()
//            .padding(.all, 20 )
//            .padding(.leading, 40)
//            .background(Color.blue)
    }
}

struct PaddingLearning_Previews: PreviewProvider {
    static var previews: some View {
        PaddingLearning()
    }
}
