//
//  MainView.swift
//  5-swiftConcepts-firebaseAuth-todo
//
//  Created by Liu Ziyi on 19/8/23.
//

import SwiftUI
import FirebaseAuth

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn {
            accountView
        } else {
            LoginView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension MainView {

    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId ?? "")
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }

}
