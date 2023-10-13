//
//  NavLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 22/09/2022.
//

import SwiftUI

struct NavLearning: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, World!") {
                    OtherScreen()
                }

                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing: NavigationLink(destination: OtherScreen(), label: {
                    Image(systemName: "gear")
                })
                .accentColor(.red)
            )
        }
    }
}

struct OtherScreen: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green")
                .navigationBarHidden(true)

            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }

                NavigationLink("Click") {
                    Text("Third SCreen")
                }
            }
        }
    }
}

struct NavLearning_Previews: PreviewProvider {
    static var previews: some View {
        NavLearning()
    }
}
