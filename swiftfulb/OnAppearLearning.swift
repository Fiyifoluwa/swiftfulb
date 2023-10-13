//
//  OnAppearLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2023.
//

import SwiftUI

struct OnAppearLearning: View {
    @State var myText: String = "Here"
    @State var count: Int = 0

    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack(content: {
                    ForEach(0..<50, id: \.self) { _ in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                })
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    myText = "There instead."
                }
            })
            .onDisappear(perform: {
                myText = "Just go back here."
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

#Preview {
    OnAppearLearning()
}
