//
//  MainViewViewModel.swift
//  5-swiftConcepts-firebaseAuth-todo
//
//  Created by Liu Ziyi on 19/8/23.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    
//    @Published var currentUserId: String = ""
//    private var handler: AuthStateDidChangeListenerHandle?
      var currentUserId: String?
    
    init() {
//        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
//            DispatchQueue.main.async {
//                self?.currentUserId = user?.uid ?? ""
//            }
//        }
        
        if let user = Auth.auth().currentUser {
            currentUserId = user.uid
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
