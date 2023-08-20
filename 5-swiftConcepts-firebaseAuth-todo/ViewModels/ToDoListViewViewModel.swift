//
//  ToDoListViewViewModel.swift
//  5-swiftConcepts-firebaseAuth-todo
//
//  Created by Liu Ziyi on 19/8/23.
//

import FirebaseFirestore
import Foundation

class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    
    private var userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
