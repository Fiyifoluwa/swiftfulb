//
//  DocumentationLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2023.
//

import SwiftUI

struct DocumentationLearning: View {
//    MARK: PROPERTIES

    @State var data: [String] = ["apples", "oranges", "bananas"]
    @State var showAlert: Bool = false

//    MARK: BODY

    // Working copy - todo
    /*
     1. Fix here
     2. Fix there
     */

    var body: some View {
        NavigationView { // Start nav
            ZStack {
//                back
                Color.cyan.ignoresSafeArea()
                
//                fore
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                    Button("Alert", action: {
                        showAlert.toggle()
                    })
                ).alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert!")
            })
            }
        } // End nav
    }
    
    /// This is the foreground layer that holds a scrollview
    private var foregroundLayer: some View {
        ScrollView { // Start scroll
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name).font(.headline)
            }
        } // end scroll
    }

//    MARK: FNS

    
    /// Gets an alert with a specified title
    ///
    /// This function creates and returns an alert immediately. Yada yada no message something.
    /// ```
    ///  getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no message in the alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

#Preview {
    DocumentationLearning()
}
