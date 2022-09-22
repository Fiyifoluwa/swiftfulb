//
//  AlertLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 22/09/2022.
//

import SwiftUI

struct AlertLearning: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var bgColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1"){
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("Button 2"){
                    alertType = .success
//                    alertTitle = "Successfully uploaded video"
//                    alertMessage = "Your video is now public  🎉"
                    showAlert.toggle()
                }
            }
            .alert(
                isPresented: $showAlert) {
    //                Alert(title: Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/))
                    getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("Error uploading video"))
            
        case .success:
            return Alert(title: Text("Successfully uploaded video"), message: Text("Your video is now public  🎉"), dismissButton: .default(Text("OK"), action: {
                bgColor = .green
            }))
            
        default:
            return Alert(title: Text("ERROR"))
        }
        
//        return Alert(title: Text(alertTitle), message: Text("The video could not be uploaded"), dismissButton: .default(Text("OK")))
        
        
//        return Alert(
//            title: Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/),
//            message: Text("This is swiftful thinking"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                bgColor = .red
//            }),
//            secondaryButton: .cancel()
//        )
    }
}

struct AlertLearning_Previews: PreviewProvider {
    static var previews: some View {
        AlertLearning()
    }
}
