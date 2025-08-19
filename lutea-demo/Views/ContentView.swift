//
//  ContentView.swift
//  lutea-demo
//
//  Created by Zayan Baig on 18/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Login")
            Button("yoo") {
                
            }
            NavigationSplitView {
                Text("Sidebar")
            } content: {
                Text("What is going on")
            } detail: {
                Text("Detail")
                Text("Helloooo")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
