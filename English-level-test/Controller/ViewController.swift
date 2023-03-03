//
//  ViewController.swift
//  English-level-test
//
//  Created by Maciej Dubowik on 22/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.layer.answerButtonStyling()
        button2.layer.answerButtonStyling()
        button3.layer.answerButtonStyling()
        button4.layer.answerButtonStyling()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton){
        let userAnswer = sender.currentTitle!
        let correctAnswer = quizBrain.checkAnswer(userAnswer)
        if correctAnswer {
            print("Correct answer")
        } else {
            print("Incorrect answer")
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo:nil, repeats: true)
    }
    
    @objc func updateUI(){
        questionNumberLabel.text = "Question \(quizBrain.questionNumber)/12"
        questionLabel.text = quizBrain.getQuestionText()
        button1.setTitle(quizBrain.getFirstAnswerText(), for: .normal)
        button2.setTitle(quizBrain.getSecondAnswerText(), for: .normal)
        button3.setTitle(quizBrain.getThirdAnswerText(), for: .normal)
        button4.setTitle(quizBrain.getFourthAnswerText(), for: .normal)

    
    }
}

extension CALayer {
    func answerButtonStyling(){
        cornerRadius = 10
        borderColor = UIColor.black.cgColor
        borderWidth = 2
    }
}

