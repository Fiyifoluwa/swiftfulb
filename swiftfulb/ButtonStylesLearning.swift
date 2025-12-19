//
//  ButtonStylesLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2024.
//

import SwiftUI

struct ButtonStylesLearning: View {
    var body: some View {
        VStack {
            Button("Button 4 hm") {}
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .controlSize(.large)
                .buttonStyle(.borderedProminent)
//            .font(.headline)
//            .foregroundColor(.gray)
//            .padding()
//            .padding(.horizontal, 10)
            
            Button("Button 4 hm") {}
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .controlSize(.regular)
                .buttonStyle(.bordered)
//            .font(.headline)
//            .foregroundColor(.gray)
//            .padding()
//            .padding(.horizontal, 10)
            
            Button("Button 4 hm") {}
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .controlSize(.small)
                .buttonStyle(.borderedProminent)
//            .font(.headline)
//            .foregroundColor(.gray)
//            .padding()
//            .padding(.horizontal, 10)
            
            Button("Button 4 hm") {}
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .controlSize(.mini)
                .buttonStyle(.borderedProminent)
//            .font(.headline)
//            .foregroundColor(.gray)
//            .padding()
//            .padding(.horizontal, 10)
        }
        .padding(40)
    }
}

#Preview {
    ButtonStylesLearning()
}
