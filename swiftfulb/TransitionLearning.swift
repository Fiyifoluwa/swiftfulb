//
//  TransitionLearning.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 19/09/2022.
//

import SwiftUI

struct TransitionLearning: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button".uppercased()){
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: AnyTransition.opacity.animation(.easeInOut)
                        )
                    )
                    .animation(Animation.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionLearning_Previews: PreviewProvider {
    static var previews: some View {
        TransitionLearning()
    }
}
