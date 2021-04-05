//
//  User.swift
//  CheckIn
//
//  Created by Anton on 05.04.2021.
//

struct User {
    let login: String
    let password: String
    let name: String
    let age: Int
    let description: String
    let work: String
    let hobby: String
    
    static func getUser() -> User {
         let user = User(
            login: "Elon Mask",
            password: "bugaga",
            name: "Anton",
            age: 25,
            description: "описание",
            work: "работа",
            hobby: "хобби")
        
        return user
    }
}

