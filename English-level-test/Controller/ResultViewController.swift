//
//  ResultController.swift
//  English-level-test
//
//  Created by Maciej Dubowik on 04/03/2023.
//

import UIKit

class ResultViewController: UIViewController{
    
    var finalScore: String?
    var quizbrain = QuizBrain()

    @IBOutlet weak var pointsLabel: UILabel!
    @IBAction func tryAgainButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsLabel.text = "Score: " + finalScore!
    }
}
