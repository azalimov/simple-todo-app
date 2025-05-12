//
//  User.swift
//  simple-todo-app
//
//  Created by Azamat Alimov on 5/9/25.
//

import Foundation

struct UserResponseDTO: Codable {
    let id: String
    let name: String
    let email: String
    let joinData: TimeInterval
}
