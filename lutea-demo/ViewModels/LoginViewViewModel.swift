//
//  LoginViewViewModel.swift
//  lutea-demo
//
//  Created by Zayan Baig on 18/08/2025.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var error_message: String = ""
    
    
    init() {}
    
    func login() {
        
        guard validate() else { return }
        
        Auth.auth().signIn(withEmail: email, password: password)
                
    }
    
    private func validate() -> Bool {
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            error_message = "Fill in all fields"
            return false
        }
        
        guard email.contains( "@" ) && email.contains( "." ) else {
            error_message = "Please enter a valid email"
            return false

        }
        
        
        print("Log in attempt")
        return true

        
    }
}
