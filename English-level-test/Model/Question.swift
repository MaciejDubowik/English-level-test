//
//  Question.swift
//  English-level-test
//
//  Created by Maciej Dubowik on 03/03/2023.
//

import Foundation

struct Question {
    let text: String
    let correctAnswer: String
    let answer1: String
    let answer2: String
    let answer3: String
    let answer4: String
    
    init(text: String, correctAnswer: String, answer1: String, answer2: String, answer3: String, answer4: String) {
        self.text = text
        self.correctAnswer = correctAnswer
        self.answer1 = answer1
        self.answer2 = answer2
        self.answer3 = answer3
        self.answer4 = answer4
    }
}
