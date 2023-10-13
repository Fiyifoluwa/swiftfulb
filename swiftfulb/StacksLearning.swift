//
//  StacksLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 10/09/2022.
//

import SwiftUI

struct StacksLearning: View {
//    V stacks - vertival
//    H stacks - horizontal
//    Z stacks - basically z-index
    var body: some View {
//        ZStack(alignment: .bottomTrailing, content: {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 200, height: 200)
//
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 150, height: 150)
//
//                    Rectangle()
//                        .fill(Color.yellow)
//                        .frame(width: 100, height: 100)
//         })
//        ZStack (alignment: .top){
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack (alignment: .leading, spacing: 30 ) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//
//                HStack (alignment: .bottom) {
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(Color.pink)
//                    .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(Color.blue)
//                    .frame(width: 25, height: 25)
//                }
//                .background(Color.white )
//            }
//            .background(Color.black)
//        }
//        VStack (alignment: .center, spacing: 20) {
//            Text("5")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.gray)
//                    .underline()
//            Text("Items in your cart")
//                .font(.caption)
//                .foregroundColor(Color.black)
//
//        }

        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100, alignment: .center)

                Text("1")
                    .font(.title)
                    .foregroundColor(Color.white)
            }

            Text("1")
                .font(.title)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100, alignment: .center))
        }
    }
}

struct StacksLearning_Previews: PreviewProvider {
    static var previews: some View {
        StacksLearning()
    }
}
