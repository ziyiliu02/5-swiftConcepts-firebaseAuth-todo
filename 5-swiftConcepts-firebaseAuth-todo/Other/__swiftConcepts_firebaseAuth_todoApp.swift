//
//  __swiftConcepts_firebaseAuth_todoApp.swift
//  5-swiftConcepts-firebaseAuth-todo
//
//  Created by Liu Ziyi on 19/8/23.
//

import FirebaseCore
import SwiftUI

@main
struct __swiftConcepts_firebaseAuth_todoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
