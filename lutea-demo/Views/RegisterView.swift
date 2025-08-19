//
//  RegisterView.swift
//  lutea-demo
//
//  Created by Zayan Baig on 18/08/2025.
//

import SwiftUI

struct RegisterView: View {
    @State var model = RegisterViewViewModel()
    var body: some View {
            VStack {
                HeaderView(
                    title: "Register",
                    icon: "photo.on.rectangle",
                    background: Color.green,
                ).offset(y: -UIScreen.main.bounds.height * 0.05)
                
                
                if !model.error_message.isEmpty {
                    Text(model.error_message).foregroundColor(Color.red)
                }

                Form {
                    TextField("Email", text: $model.email)
                        .textContentType(.emailAddress)
                    SecureField("Password", text: $model.password)
                        .textContentType(.oneTimeCode) // to prevent strong password suggestions
                    SecureField("Confirm Password", text: $model.confirm_password)
                        .textContentType(.oneTimeCode)
                    
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
