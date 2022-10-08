//
//  User.swift
//  Quiz
//
//  Created by Alexander Petrenko on 04.10.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "admin", password: "admin", person: Person(name: "Kirk", surname: "Duglas")
        )
    }
    
}

struct Person {
    let name: String
    let surname: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}
