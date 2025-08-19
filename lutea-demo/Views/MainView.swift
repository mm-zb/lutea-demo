//
//  MainView.swift
//  lutea-demo
//
//  Created by Zayan Baig on 18/08/2025.
//

import SwiftUI

struct MainView: View {
    @StateObject private var model = MainViewViewModel()
        
    var body: some View {
        if model.isSignedIn, !model.currentUserId.isEmpty {
            TabView {
                GraphsView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                DataEntryView()
                    .tabItem {
                        Label("Data", systemImage: "drop.triangle")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
            }
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
