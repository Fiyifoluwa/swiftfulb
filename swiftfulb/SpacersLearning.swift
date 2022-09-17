//
//  SpacersLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 10/09/2022.
//

import SwiftUI

struct SpacersLearning: View {
    var body: some View {
        VStack {
            HStack (spacing: 0){
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
//                    .background(.orange)
                
                Image(systemName: "gear")
                
                
    //            Spacer(minLength: 0)
    //                .frame(height: 10)
    //                .background(.orange)
    //
    //            Rectangle()
    //                .frame(width: 50, height: 50)
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(.orange)
    //
    //            Rectangle()
    //                .fill(.red)
    //                .frame(width: 50, height: 50)
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(.orange)
    //
    //            Rectangle()
    //                .fill(.green)
    //                .frame(width: 50, height: 50)
    //
    //            Spacer(minLength: 0)
    //                .frame(height: 10)
    //                .background(.orange)
            }
//            .background(.yellow)
            .padding(.horizontal)
//            .background(.blue)
        .font(.title)
            
            Spacer()
                .frame(width: 10)
//                .background(.orange)
            
            Rectangle()
                .frame(height: 55)
        }
    }
}

struct SpacersLearning_Previews: PreviewProvider {
    static var previews: some View {
        SpacersLearning()
    }
}
