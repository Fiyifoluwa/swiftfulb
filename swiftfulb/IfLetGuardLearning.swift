//
//  IfLetGuardLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 14/10/2023.
//

import SwiftUI

struct IfLetGuardLearning: View {
    @State var displayText: String? = nil
    @State var loading: Bool = false
    @State var userId: String? = "nil"

    var body: some View {
        NavigationView {
            VStack {
                Text("safe doings only 🙏🏽")
                if let text = displayText {
                    Text(text).font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                }
                if loading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
            }
        }
    }

    func loadData() {
        if let id = userId {
            loading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is new data. User ID is \(id)"
                loading = false
            }
        } else {
            displayText = "Error, no user id!"
        }
    }
}

#Preview {
    IfLetGuardLearning()
}
