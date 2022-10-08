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
    let answers: [Answer]
}

extension Question{
    static func getQuestions() -> [Question] {
        return [
            Question(text: "What kind of food you prefer?",
                     type: .single,
                     answers: [
                        Answer(text: "Meat", type: .dog),
                        Answer(text: "Fish", type: .cat),
                        Answer(text: "Carrot", type: .rabbit),
                        Answer(text: "Veggie", type: .turtle)
                     ]),
            Question(text: "What do you like to do?",
                     type: .multiple,
                     answers: [
                        Answer(text: "Swim", type: .dog),
                        Answer(text: "Sleep", type: .cat),
                        Answer(text: "Hug", type: .rabbit),
                        Answer(text: "Eat", type: .turtle)
                     ]),
            Question(text: "Do you like to ride  on car?",
                     type: .range,
                     answers: [
                        Answer(text: "Like", type: .dog),
                        Answer(text: "Love", type: .cat),
                        Answer(text: "Parallel", type: .rabbit),
                        Answer(text: "Hate", type: .turtle)
                     ])
        ]
    }
}
