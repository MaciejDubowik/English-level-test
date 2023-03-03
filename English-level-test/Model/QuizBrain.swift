//
//  QuizBrain.swift
//  English-level-test
//
//  Created by Maciej Dubowik on 03/03/2023.
//

import Foundation

struct QuizBrain{
    let quiz = [
        Question(
            text: "What is the correct past tense of the verb 'go'?",
            correctAnswer: "C) went",
            answer1: "A) goed",
            answer2: "B) gone",
            answer3: "C) went",
            answer4: "D) goned"
        ),
        Question(
            text: "Choose the correct word to complete the sentence: 'I __________ to the beach yesterday.'",
            correctAnswer: "C) went",
            answer1: "A) go",
            answer2: "B) goes",
            answer3: "C) went",
            answer4: "D) going"
        ),
        Question(
            text: "What is the correct comparative form of the adjective 'big'?",
            correctAnswer: "B) bigger",
            answer1: "A) biger",
            answer2: "B) bigger",
            answer3: "C) biggier",
            answer4: "D) biggest"
        ),
        Question(
            text: "Choose the correct form of the verb 'to be' to complete the sentence: 'She __________ my sister.'",
            correctAnswer: "B) is",
            answer1: "A) am",
            answer2: "B) is",
            answer3: "C) are",
            answer4: "D) be"
        ),
        Question(
            text: "What is the correct form of the verb 'to have' in the present perfect tense?",
            correctAnswer: "C) have",
            answer1: "A) has",
            answer2: "B) had",
            answer3: "C) have",
            answer4: "D) having"
        ),
        Question(
            text: "Choose the correct preposition to complete the sentence: 'I'm looking __________ my keys.'",
            correctAnswer: "A) at",
            answer1: "A) at",
            answer2: "B) for",
            answer3: "C) on",
            answer4: "D) in"
        ),
        Question(
            text: "What is the correct form of the verb 'to do' in the negative sentence: 'I __________ like coffee.'",
            correctAnswer: "A) don't",
            answer1: "A) don't",
            answer2: "B) doesn't",
            answer3: "C) didn't",
            answer4: "D) don'ts"
        ),
        Question(
            text: "Choose the correct word to complete the sentence: 'He is __________ than his brother.'",
            correctAnswer: "B) taller",
            answer1: "A) tall",
            answer2: "B) taller",
            answer3: "C) tallest",
            answer4: "D) more tall"
        ),
        Question(
            text: "What is the correct form of the verb 'to go' in the future tense?",
            correctAnswer: "C) will go",
            answer1: "A) go",
            answer2: "B) goes",
            answer3: "C) will go",
            answer4: "D) going"
        ),
        Question(
            text: "What is the correct plural form of 'child'?",
            correctAnswer: "D) children",
            answer1: "A) childs",
            answer2: "B) childies",
            answer3: "C) childes",
            answer4: "D) children"
        ),
        Question(
            text: "Choose the correct word to complete the sentence: 'I __________ to the gym every morning.'",
            correctAnswer: "B) go",
            answer1: "A) goes",
            answer2: "B) go",
            answer3: "C) am going",
            answer4: "D) have gone"
        ),
        Question(
            text: "What is the correct superlative form of the adjective 'bad'?",
            correctAnswer: "C) worst",
            answer1: "A) badder",
            answer2: "B) baddest",
            answer3: "C) worst",
            answer4: "D) worse"
        )
    ]
    
    var questionNumber: Int = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        userAnswer == quiz[questionNumber].correctAnswer ? true : false
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getFirstAnswerText() -> String{
        return quiz[questionNumber].answer1
    }
    func getSecondAnswerText() -> String{
        return quiz[questionNumber].answer2
    }
    func getThirdAnswerText() -> String{
        return quiz[questionNumber].answer3
    }
    func getFourthAnswerText() -> String{
        return quiz[questionNumber].answer4
    }
    
    mutating func nextQuestion(){
        if questionNumber<quiz.count-1 {
            questionNumber += 1
        } else {
            questionNumber = 0 
        }
    }
}
