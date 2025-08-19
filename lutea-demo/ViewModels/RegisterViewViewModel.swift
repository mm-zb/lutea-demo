//
//  RegisterViewViewModel.swift
//  lutea-demo
//
//  Created by Zayan Baig on 18/08/2025.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation


class RegisterViewViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirm_password: String = ""
    @Published var error_message: String = ""
    
    init() {}
    
    func register() {
        guard validate() else {
            return
        }
        
        print("Register success")
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            guard let userId = result?.user.uid else {
                return
            }
            
            self.insertUserToDB(id: userId)
            
        }
    }
    
    private func insertUserToDB(id: String) {
        let newUser = User(
            id: id,
            email: email,
            joined: Date().timeIntervalSince1970
        )
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
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
        
        guard password.count >= 6 else {
            error_message = "Your password must be at least 6 characters"
            return false
        }
        
        guard password == confirm_password else {
            error_message = "Password and Confirm Password fields did not match"
            return false

        }

        return true
    }
}
