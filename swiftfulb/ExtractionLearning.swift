//
//  ExtractionLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 17/09/2022.
//

import SwiftUI

struct ExtractionLearning: View {
    
    @State var bgColor: Color = Color.pink
    @State var titleColor: Color = Color.black
    
    var body: some View {
        ZStack{
//            background
            bgColor
                .edgesIgnoringSafeArea(.all)
            
//            foreground or content layer
            contentArea
        }
    }
    
    var contentArea: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
                .foregroundColor(titleColor)
            
            Button {
                    buttonPressed()
            } label: {
                Text("press me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonPressed(){
//        bgColor = .yellow
        
        if bgColor == .pink {
            bgColor = .yellow
            titleColor = .black
            
        } else if bgColor == .yellow {
            bgColor = .pink
            titleColor = .white
        }
    }
}

struct ExtractionLearning_Previews: PreviewProvider {
    static var previews: some View {
        ExtractionLearning()
    }
}
