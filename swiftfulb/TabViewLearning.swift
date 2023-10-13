//
//  TabViewLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 12/10/2023.
//

import SwiftUI

struct TabViewLearning: View {
    @State var selectedTab: Int = 0

    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill",
    ]

    var body: some View {
        TabView {
            ForEach(icons,
                    id: \.self,
                    content: { icon in
                        Image(systemName: icon).resizable().scaledToFit().padding(30)
                    })
        }.background(RadialGradient(colors: [.cyan, .green], center: .center, startRadius: 5, endRadius: 300))
            .frame(height: 300)
            .tabViewStyle(PageTabViewStyle())
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)        .tabItem {
//                Image(systemName: "house.fill")
//                Text("Home")
//            }.tag(0)
//            Text("Browse Tab").tabItem {
//                Image(systemName: "globe")
//                Text("Browse")
//            }.tag(1)
//            Text("Profile Tab").tabItem {
//                Image(systemName: "person.fill")
//                Text("Profile")
//            }.tag(2)
//        }.accentColor(.red)
    }
}

#Preview {
    TabViewLearning()
}

struct HomeView: View {
    @Binding var selectedTab: Int

    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to Profile").font(.headline).padding().padding(.horizontal).background(Color.white).cornerRadius(10)
                })
            }
        }
    }
}
