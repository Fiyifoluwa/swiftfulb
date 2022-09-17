//
//  ButtonsLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 17/09/2022.
//

import SwiftUI

struct ButtonsLearning: View {
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
                .font(.title)
            
            Button("Press me pls now!") {
                self.title = "BUTTON WAS PRESSED. BUTTON BEEN DEY VEX"
            }
            .accentColor(.red)
            
            Button {
                self.title = "BUTTON 2 WAS PRESSED. BUTTON BEEN DEY VEX"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    )
            }
            
            Button {
                self.title = "yamete kudasai"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.pink)
                    }
            }
            
            Button {
                self.title = "Button 4 hm"
            } label: {
                 Text("finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 1.5)
                    )
            }

        }
    }
}

struct ButtonsLearning_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsLearning()
    }
}
