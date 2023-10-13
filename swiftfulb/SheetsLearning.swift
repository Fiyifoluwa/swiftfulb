//
//  SheetsLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 22/09/2022.
//

import SwiftUI

struct SheetsLearning: View {
    @State var showSheet: Bool = false

    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)

            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }

            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                DO NOT ADD CONDITIONAL LOGIC
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)

            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetsLearning_Previews: PreviewProvider {
    static var previews: some View {
        SheetsLearning()
    }
}
