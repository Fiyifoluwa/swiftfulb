//
//  InitsAndEnumsLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 10/09/2022.
//

import SwiftUI

struct InitsAndEnumsLearning: View {
    let bgColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count

        if fruit == .apple {
            self.title = "Apples"
            self.bgColor = .red
        } else {
            self.title = "Oranges"
            self.bgColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack (spacing: 16){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
            
        }
        .frame(width: 150, height: 150)
        .background(bgColor)
        .cornerRadius(10)
    }
}

struct InitsAndEnumsLearning_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitsAndEnumsLearning(count: 100, fruit: .apple)
            InitsAndEnumsLearning(count: 46, fruit: .orange)
        }
    }
}
