//
//  RegisterView.swift
//  lutea-demo
//
//  Created by Zayan Baig on 18/08/2025.
//

import SwiftUI

struct RegisterView: View {
    @State var password: String = ""
    @State var confirm_password: String = ""
    @State var email: String = ""
    
    @State var model = RegisterViewViewModel()
    var body: some View {
            VStack {
                HeaderView(
                    title: "Register",
                    icon: "photo.on.rectangle",
                    background: Color.green,
                ).offset(y: -UIScreen.main.bounds.height * 0.05)
                
                Form {
                    TextField("Email", text: $model.email)
                    SecureField("Password", text: $model.password)
                    SecureField("Confirm Password", text: $model.confirm_password)
                    
                    LDButtonView(
                        title: "Sign Up",
                        bgcolour: Color.blue,
                        fgcolour: Color.white,
                    ) {
                        model.register()
                    }

                
                }
                Spacer()
            }
    }
}

#Preview {
    RegisterView()
}
