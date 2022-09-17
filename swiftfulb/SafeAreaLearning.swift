//
//  SafeAreaLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 17/09/2022.
//

import SwiftUI

struct SafeAreaLearning: View {
    var body: some View {
//        older versions of swiftUI were such that the background would have a clear safe area and boundary but that isnt the case anymore. This would have been the case where the background of the Z stack would have had the method to ignore the safearea all around.
//        ZStack {
////            background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//
////            foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
////            .background(.red)
//        }
        ScrollView{
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10, content: {
                    index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                })
            }
        }
        .background(.red)
//        .background(ignoresSafeArea(edges: .all))
    }
}

struct SafeAreaLearning_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaLearning()
    }
}
