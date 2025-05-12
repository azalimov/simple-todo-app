//
//  SignUpViewModel.swift
//  simple-todo-app
//
//  Created by Azamat Alimov on 5/9/25.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation


class SignUpViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorText: String = ""
    
    init(){}
    
    func register(){
        guard validate() else {
            return
        }
        Auth.auth().createUser(withEmail: email, password: password) {[weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String) {
        let newUser = UserResponseDTO(id: id,
                                      name: name,
                                      email: email,
                                      joinData: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users").document(id).setData(newUser.toJson())
    }
    
    private func validate() -> Bool {
        errorText = ""
        print("Enter")
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorText = "Please fill all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorText = "Please enter valid email"
            return false
        }
        
        guard password.count >= 6 else {
            errorText = "Too short password"
            return false
        }
        
        return true
    }
}
