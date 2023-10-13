//
//  GridsLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 17/09/2022.
//

import SwiftUI

struct GridsLearning: View {
    let columns: [GridItem] = [
        //        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
    ]

    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)

            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders], content: {
                    Section(header:
                        Text("Section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .padding(),

                        content: {
                            ForEach(0 ..< 20) { _ in
                                Rectangle()
                                    .frame(height: 150)
                            }
                        })
                    Section(header:
                        Text("Section 2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.red)
                            .padding(),

                        content: {
                            ForEach(0 ..< 20) { _ in
                                Rectangle()
                                    .fill(.green)
                                    .frame(height: 150)
                            }
                        })
                }
            )
        }
    }
}

struct GridsLearning_Previews: PreviewProvider {
    static var previews: some View {
        GridsLearning()
    }
}
