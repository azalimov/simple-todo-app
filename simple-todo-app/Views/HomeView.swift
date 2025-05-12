//
//  HomeView.swift
//  simple-todo-app
//
//  Created by Azamat Alimov on 5/9/25.
//

import SwiftUI
import FirebaseAuth

struct HomeView: View {
    var body: some View {
        Button {
            do {
               try Auth.auth().signOut()
            } catch {
                print("ERROR")
            }
        } label: {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)        }
    }
}

#Preview {
    HomeView()
}
