//
//  OnboardingView.swift
//  swiftfulb
//
//  Created by Fiyi Oladimeji on 13/10/2024.
//

import SwiftUI

struct OnboardingView: View {
    //    onboarding states:
    /*
     0 - Welcome
     1 - add name
     2 - add age
     3 - add gender
     */
    @State var onboardingState: Int = 0

    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))

//    onboarding
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""

    // alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false

//    app
    @AppStorage("name") var currentName: String?
    @AppStorage("age") var currentAge: Int?
    @AppStorage("gender") var currentGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)

                default: RoundedRectangle(cornerRadius: 25.0).foregroundColor(.green)
                }
            }

            // buttons
            VStack {
                Spacer()
                bottomButton
            }.padding(30)
        }.alert(isPresented: $showAlert) {
            Alert(title: Text(alertTitle))
        }
    }
}

#Preview {
    OnboardingView().background(Color.purple)
}

// MARK: COMPONENTS

extension OnboardingView {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN UP" : onboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(20)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }

    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill").resizable().scaledToFit().frame(width: 200, height: 200).foregroundColor(.white)

            Text("Find your match").font(.largeTitle).fontWeight(.semibold).foregroundColor(.white).overlay(
                Capsule(style: .continuous).frame(height: 3).offset(y: 5).foregroundColor(.white), alignment: .bottom
            )

            Text("This is just some information to introduce you to the app. What we are doing in this lesson is a refresher on how to use SwiftUI (specifically the AppStorage).").fontWeight(.medium).foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center).padding(30)
    }

    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()

            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            TextField("Enter your name", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }

    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()

            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Text("\(String(format: "%.0f", age)) years old").font(.largeTitle).fontWeight(.semibold).foregroundColor(.white)

            Slider(value: $age, in: 18 ... 100, step: 1).accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }

    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()

            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Picker(selection: $gender,
                   label:
                   Text(gender.count > 1 ? gender : "Select your gender")
                       .font(.headline)
                       .foregroundColor(.purple)
                       .frame(height: 55)
                       .frame(maxWidth: .infinity)
                       .background(Color.white)
                       .cornerRadius(10),
                   content: {
                       Text("Male").tag("Male")
                       Text("Female").tag("Female")
                       Text("Non-Binary").tag("Non-Binary")
                   })
                   .pickerStyle(MenuPickerStyle())

            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: FUNCTIONS

extension OnboardingView {
    func handleNextButtonPressed() {
//        check input
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long! 🤧")
                return
            }
        case 3:
            guard gender.count > 0 else {
                showAlert(title: "You have to select a gender! 🤧")
                return
            }
        default:
            break
        }

//        go to next
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }

    func signIn() {
        currentName = name
        currentAge = Int(age)
        currentGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }

    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
