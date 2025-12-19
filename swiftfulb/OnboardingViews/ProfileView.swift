//
//  ProfileView.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2024.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("name") var currentName: String?
    @AppStorage("age") var currentAge: Int?
    @AppStorage("gender") var currentGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)

            Text(currentName ?? "Your name here")
            Text("This user is \(currentAge ?? 0)years old")
            Text("Their gender is \(currentGender ?? "unknown")")

            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }

    func signOut() {
        currentAge = nil
        currentGender = nil
        currentName = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
