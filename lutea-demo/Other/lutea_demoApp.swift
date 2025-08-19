//
//  lutea_demoApp.swift
//  lutea-demo
//
//  Created by Zayan Baig on 18/08/2025.
//

import Firebase
import SwiftUI

@main
struct lutea_demoApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
