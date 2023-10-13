//
//  ActionSheetLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 22/09/2022.
//

import SwiftUI

struct ActionSheetLearning: View {
    @State var isVisible: Bool = false

    @State var actionSheetOption: actionSheetOptions = .isOtherPost

    enum actionSheetOptions {
        case isMyPost
        case isOtherPost
    }

//    @State v

    var body: some View {
        VStack {
            HStack {
                Circle().frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    isVisible.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)

            Rectangle().aspectRatio(1.0, contentMode: .fit)

        }.actionSheet(isPresented: $isVisible, content: getActionSheet)
    }

    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")) {}
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {}
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {}
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")

        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )

        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, deleteButton, cancelButton]
            )
        }

//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("Title part"),
//            message: Text("Message part"),
//            buttons: [button1, button1, button1, button1, button2, button3]
//        )
//        return ActionSheet(title: Text("Hello!"))
    }
}

struct ActionSheetLearning_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetLearning()
    }
}
