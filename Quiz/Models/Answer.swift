//
//  Answers.swift
//  Quiz
//
//  Created by Alexander Petrenko on 30.09.2022.
//


struct Answer {
    let text: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Dog"
        case .cat:
            return "Cat"
        case .rabbit:
            return "Rabbit"
        case .turtle:
            return "Turtle"
        }
    }
}
