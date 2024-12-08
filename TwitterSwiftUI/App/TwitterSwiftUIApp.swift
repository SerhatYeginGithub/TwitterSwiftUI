//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

@main
struct TwitterSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                LoginView()
            }
        }
    }
}
