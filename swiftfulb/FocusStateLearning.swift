//
//  FocusStateLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2024.
//

import SwiftUI

struct FocusStateLearning: View {
    enum FormField {
        case name
        case password
    }

    @State private var name: String = ""
    @State private var password: String = ""
//    @FocusState private var nameInFocus: Bool
//    @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldInFocus: FormField?

    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .focused($fieldInFocus, equals: .name)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            SecureField("Password", text: $password)
                .focused($fieldInFocus, equals:  .password)
//                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            Button("SIGN UP 🎉") {
                let nameIsValid = !name.isEmpty
                let passwordIsValid = !password.isEmpty

                if nameIsValid && passwordIsValid {
                    print("Name: \(name), Password: \(password)")
                } else if nameIsValid {
                    fieldInFocus = .password
//                    nameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .name
//                    nameInFocus = true
//                    passwordInFocus = false
                }
            }
//            Button("Toggle here") {
//                nameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.nameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateLearning()
}
