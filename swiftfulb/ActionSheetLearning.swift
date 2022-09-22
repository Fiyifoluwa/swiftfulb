//
//  ActionSheetLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 22/09/2022.
//

import SwiftUI

struct ActionSheetLearning: View {
    @State var isVisible: Bool = false
    
//    @State v
    
    
    var body: some View {
        Button("Click me") {
            isVisible.toggle()
        }
        .actionSheet(isPresented: $isVisible, content: getActionSheet)
    }
    
    func getActionSheet () -> ActionSheet {
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
        let button3: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("Title part"),
            message: Text("Message part"),
            buttons: [button1, button1, button1, button1, button2, button3]
        )
//        return ActionSheet(title: Text("Hello!"))
    }
}

struct ActionSheetLearning_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetLearning()
    }
}
