//
//  EnvObjectLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 11/11/2023.
//

import SwiftUI

// ObservedObject and StateObject
// EnvironmentObject

class EnvViewModel: ObservableObject {
    @Published var data: [String] = []

    init() {
        getData()
    }

    func getData() {
        data.append(contentsOf: ["iPad", "iPhone", "Watch", "iMac"])
    }
}

struct EnvObjectLearning: View {
    @StateObject var envViewModel: EnvViewModel = .init()
    var body: some View {
        NavigationView {
            List {
                ForEach(envViewModel.data, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: { Text(item) })
                }

            }.navigationTitle("iOS Devices")
        }
        .environmentObject(envViewModel)
    }
}

struct DetailView: View {
    let selectedItem: String

    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            Text("Detail View")

            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem).font(.headline).foregroundColor(.orange)
                        .padding().padding(.horizontal).background(Color.white)
                        .cornerRadius(30)
                })
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvViewModel
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.purple, Color.blue],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.data, id: \.self) {
                        item in Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvObjectLearning()
}
