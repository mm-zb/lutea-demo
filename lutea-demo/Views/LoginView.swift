//
//  LoginView.swift
//  lutea-demo
//
//  Created by Zayan Baig on 18/08/2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var model = LoginViewViewModel()

    var body: some View {
        NavigationView {
                VStack {
                    // Header
                    HeaderView(
                        title: "Lutea",
                        icon: "photo.on.rectangle",
                        background: Color.pink,
                    )
                    
                    if !model.error_message.isEmpty {
                        Text(model.error_message).foregroundColor(Color.red)
                    }

                    // Login Form
                    Form {
                        TextField("Email", text: $model.email)
                            .textFieldStyle(DefaultTextFieldStyle())
                        SecureField("Password", text: $model.password)
                            .textFieldStyle(DefaultTextFieldStyle())
                        
                        LDButtonView(
                            title: "Log In",
                            bgcolour: Color.blue,
                            fgcolour: Color.white,
                        ) {
                            model.login()
                        }

                    }.offset(y: -10)
                    
                    
                    // Info
    //                ZStack {
    //                    Circle().fill(Color.pink)
    //                    VStack {
    //                        Text("Your cycle.")
    //                        Text("Finally Explained.")
    //                    }
    //                    .foregroundColor(Color.white)
    //                    .font(.system(size: geometry.size.width * 0.05))
    //
    //                }
                    
                    
                    // Register button
                    VStack {
                        Text("Not signed up yet?")
                        NavigationLink("Create An Account", destination: RegisterView())

                    }.padding(.bottom, UIScreen.main.bounds.height*0.05)
                }.background(ignoresSafeAreaEdges: .all)
            }
    }
}

#Preview {
    LoginView()
}
