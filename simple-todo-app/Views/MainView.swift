//
//  ContentView.swift
//  simple-todo-app
//
//  Created by Azamat Alimov on 5/9/25.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currenctUserId.isEmpty {
            TabView{
                HomeView()
                    .tabItem {
                    Label("Home", systemImage: "house")
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
