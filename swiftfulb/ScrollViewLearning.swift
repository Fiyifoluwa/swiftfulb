//
//  ScrollViewLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 10/09/2022.
//

import SwiftUI

struct ScrollViewLearning: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: true, content: {
//            HStack{
//                ForEach(0..<50, content: {index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame( width: 100, height: 300)
//                })
//
//            }
//        })
        ScrollView{
            LazyVStack{
                ForEach(0..<10, content: {index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.white)
                                .frame(width: 200, height: 150)
                                .shadow( radius: 10)
                                .padding()
                            
                            ForEach(0..<10, content: {index in
                                ScrollView(.horizontal, showsIndicators: false, content: {
                                    HStack{
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(.blue)
                                            .frame(width: 200, height: 150)
                                            .shadow( radius: 10)
                                            .padding()
                                    }
                                })                                })
                        }
                    })                                })
            }
        }
    }
}

struct ScrollViewLearning_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewLearning()
    }
}
