//
//  ExtractSubviewsLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 18/09/2022.
//

import SwiftUI

struct ExtractSubviewsLearning: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack{
            MyItem(title: "Apples", count: 1, color: .green)
            MyItem(title: "Oranges", count: 5, color: .orange)
            MyItem(title: "Bananas", count: 20, color: .yellow)
        }
    }
}

struct ExtractSubviewsLearning_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsLearning()
    }
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding(20)
        .background(color)
        .cornerRadius(10)
    }
}
