//
//  ProfileView.swift
//  lutea-demo
//
//  Created by Zayan Baig on 19/08/2025.
//

import SwiftUI

struct ProfileView: View {
    @State var model = ProfileViewViewModel()
    
    var body: some View {
                VStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Button("Log out") {
                        model.logout()
                    }
        }
    }
}

#Preview {
    ProfileView()
}
