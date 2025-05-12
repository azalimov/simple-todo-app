//
//  MainViewModel.swift
//  simple-todo-app
//
//  Created by Azamat Alimov on 5/9/25.
//
import FirebaseAuth
import Foundation

class MainViewModel: ObservableObject {
    @Published var currenctUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener{[weak self] _, user in
            DispatchQueue.main.async {
                self?.currenctUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
