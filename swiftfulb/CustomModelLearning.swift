//
//  CustomModelLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 14/10/2023.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let username: String
    let followerCount: Int
    let isFollowingYou: Bool
    let isVerified: Bool
}

struct CustomModelLearning: View {
    @State var users: [UserModel] = [
        //        "Ade", "Pamela", "Pamilerin", "Tosin"
        UserModel(displayName: "Ade", username: "ade2bad", followerCount: 240000, isFollowingYou: false, isVerified: false),
        UserModel(displayName: "Pamela", username: "pam", followerCount: 200, isFollowingYou: true, isVerified: true),
        UserModel(displayName: "Pamilerin", username: "pampam", followerCount: 40000, isFollowingYou: false, isVerified: false),
        UserModel(displayName: "Tosin", username: "thosean", followerCount: 900000, isFollowingYou: true, isVerified: false),
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(users) {
                    user in

                    HStack(spacing: 15) {
                        Circle().frame(width: 35, height: 35)

                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.username)")
                                .foregroundColor(.cyan)
                                .font(.caption)
                        }

                        Spacer()

                        if user.isFollowingYou {
                            Text("🫵🏽")
                        }

                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(/*@START_MENU_TOKEN@*/ .blue/*@END_MENU_TOKEN@*/)
                        }

                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
//                ForEach(users, id: \.self) { name in
//                    HStack(spacing: 15) {
//                        Circle().frame(width: 35, height: 35)
//                        Text(name)
//                    }
//                    .padding(.vertical, 10)
//                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    CustomModelLearning()
}
