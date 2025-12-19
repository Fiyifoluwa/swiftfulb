//
//  TapGestureLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 14/10/2023.
//

import SwiftUI

struct TapGestureLearning: View {
    @State var selected: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(height: 200)
                .foregroundColor(selected ? .green : .cyan)

            Button(action: {
                selected.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
                    .background(.blue)
                    .cornerRadius(25)
            })
            
            Text("Tap gesture guy")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
                .background(.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    selected.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    selected.toggle()
                })
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TapGestureLearning()
}
