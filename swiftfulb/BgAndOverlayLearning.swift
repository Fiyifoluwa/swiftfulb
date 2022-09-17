//
//  BgAndOverlayLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 08/09/2022.
//

import SwiftUI

struct BgAndOverlayLearning: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
////                Color.red
////                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing)
//)
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110, height: 110)
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50), alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.pink]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(red: 1.0, green: -0.002, blue: -0.004, opacity: 0.337), radius: 10, x: 0, y: 10)
                    .overlay(
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 35, height: 35)
                                .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                )
                                .shadow(color: Color(red: 1.0, green: -0.002, blue: -0.004, opacity: 0.337), radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing)
            )
    }
}

struct BgAndOverlayLearning_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BgAndOverlayLearning()
        }
    }
}
