//
//  SwipeActionsLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2024.
//

import SwiftUI

struct SwipeActionsLearning: View {
    @State var fruits: [String] = ["apple", "orange", "Banana", "Peach"]

    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {}.tint(.gray)
                        Button("Save") {}.tint(.blue)
                        Button("Junk") {}.tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {}.tint(.yellow)
                    }
            }
//            .onDelete(perform: delete)
        }
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    SwipeActionsLearning()
}
