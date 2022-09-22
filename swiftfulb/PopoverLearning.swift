//
//  PopoverLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 22/09/2022.
//

import SwiftUI

struct PopoverLearning: View {
    
    @State var showNewScreen: Bool = false
    
    
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button {
                    showNewScreen.toggle()
                } label: {
                    Text("Button")
                        .foregroundColor(.orange)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(10))
                }
                
                Spacer()
            }
            
            //                METHOD 1 - SHEET
            //                .sheet(isPresented: $showNewScreen) {
            //                    NewScreen()
            //                }
                            
           
            //                METHOD 2 - TRANSITION
//            ZStack{
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
//            METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct PopoverLearning_Previews: PreviewProvider {
    static var previews: some View {
        PopoverLearning()
    }
}
