//
//  Questions.swift
//  Quiz
//
//  Created by Alexander Petrenko on 30.09.2022.
//


enum ResponseType {
    case single
    case multiple
    case range
}

struct Question {
    let text: String
    let type: ResponseType
    let answer: [Answer]
}
