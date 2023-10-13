//
//  ListLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 22/09/2022.
//

import SwiftUI

struct ListLearning: View {
    @State var fruits: [String] = [
        "apple", "orange", "Banana", "Peach",
    ]

    @State var veggies: [String] = [
        "Tomato", "Carrot", "Broccoli", "Cabbage",
    ]

    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) {
                        fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(.pink)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.subheadline)
                    .foregroundColor(.orange)
                }

                Section {
                    ForEach(veggies, id: \.self) {
                        veggies in
                        Text(veggies.capitalized)
                    }
                } header: {
                    Text("Veggies")
                }
            }
            .accentColor(.purple)
//            .listStyle(<#T##style: ListStyle##ListStyle#>)
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: AddButton
            )
        }
        .accentColor(.red)
    }

    var AddButton: some View {
        Button("Add") {
            add()
        }
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }

    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(
            fromOffsets: indices,
            toOffset: newOffset
        )
    }

    func add() {
        fruits.append("Coconut")
    }
}

struct ListLearning_Previews: PreviewProvider {
    static var previews: some View {
        ListLearning()
    }
}
