//
//  TextEditorLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 10/10/2022.
//

import SwiftUI

struct TextEditorLearning: View {
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .foregroundColor(.yellow)
//                color multiply is the way to add background to a text editor in swiftui. major problem is that you have to ignore foreground color if you intend to change background of the texteditor using color multiply
                    .colorMultiply(Color.secondary)
                    .cornerRadius(10)
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("SAVE")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Text(savedText)
                Spacer()
            }
            .padding()
//            .background(.green)
            .navigationTitle("TextEditor Learning")
        }
    }
}

struct TextEditorLearning_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorLearning()
    }
}
