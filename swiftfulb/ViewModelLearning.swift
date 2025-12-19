//
//  ViewModelLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 14/10/2023.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitModel] = []
    @Published var loading: Bool = false

    init() {
        getFruits()
    }

    func getFruits() {
        loading = true
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Bananas", count: 2)
        let fruit3 = FruitModel(name: "Watermelons", count: 88)
        let fruit4 = FruitModel(name: "Apples", count: 5)

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            fruits.append(fruit1)
            fruits.append(fruit2)
            fruits.append(fruit3)
            fruits.append(fruit4)
            loading = false
        }
    }

    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ViewModelLearning: View {
//    @StateObject - use in primary view or at init level
//    @ObservedObject - use this for subviews
    @StateObject var fruitViewModel: FruitViewModel = .init()

    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.loading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.cyan)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                NavigationLink(
                    destination: RandomScreen(fruitViewModel: fruitViewModel),
                    label: {
                        Image(systemName: "arrow.right")
                            .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                    }
                )
            )
        }
    }
}

struct RandomScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

            VStack {
                ForEach(fruitViewModel.fruits) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ViewModelLearning()
//    RandomScreen()
}
