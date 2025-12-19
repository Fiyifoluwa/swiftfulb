//
//  SubmitTextFieldLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2024.
//

import SwiftUI

struct SubmitTextFieldLearning: View {
    @State private var text = ""
    var body: some View {
        VStack {
            TextField("Placeholder", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("text")
                }

            TextField("Placeholder", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("text")
                }

            TextField("Placeholder", text: $text)
                .submitLabel(.continue)
                .onSubmit {
                    print("text")
                }
        }
    }
}

#Preview {
    SubmitTextFieldLearning()
}
