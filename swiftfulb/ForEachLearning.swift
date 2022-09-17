//
//  ForEachLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 10/09/2022.
//

import SwiftUI

struct ForEachLearning: View {
    let data: [String] = ["Shirt", "Suit", "Jacket"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack{
//            Text("ONE")
//            Text("TWO")
//            Text("THREE")
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index )")
            }
        }
    }
}

struct ForEachLearning_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLearning()
    }
}
