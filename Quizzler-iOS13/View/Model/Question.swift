//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Molina Espinosa, Pedro on 19/9/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

struct Question {
    var text: String
    var answer: String
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
