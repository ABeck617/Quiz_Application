//
//  ViewController.swift
//  Quiz
//
//  Created by Anthony Beckford on 8/6/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    var currentQuestionsIndex: Int = 0
       


    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionsIndex += 1
        if currentQuestionsIndex == questions.count {
            currentQuestionsIndex = 0
        }
        let question: String = questions[currentQuestionsIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionsIndex]
        answerLabel.text = answer
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionsIndex]
    }

}

