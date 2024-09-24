//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let quizz = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    var count = 0
    

    var answers: Array<Bool> = []
    var restarted = false
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = String(quizz[count].text)
        progressBar.progress = 0
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        Task { @MainActor in
            let userAnswer =  sender.currentTitle
            let actualAnswer = quizz[count].answer
            if(userAnswer == actualAnswer){
                sender.backgroundColor = UIColor.green
            }else{
                sender.backgroundColor = UIColor.red
            }
            try await Task.sleep(nanoseconds: UInt64(0.2 * Double(NSEC_PER_SEC)))

            if count < (quizz.count - 1) {
                answers.append(actualAnswer == userAnswer)
                count += 1
                questionLabel.text = quizz[count].text
                progressBar.progress = Float(count) / Float(quizz.count)
            }else{
                answers.append(actualAnswer == userAnswer)
                
                progressBar.progress = 1
                var successAnswers = 0
                for isSuccesful in answers {
                    if isSuccesful {
                        successAnswers += 1
                    }
                }
                questionLabel.text = "You have Finished and you got \(successAnswers)/\(quizz.count) successful answers"
                
                trueButton.setTitle( "Restart", for: UIControl.State.normal)
                falseButton.isHidden = true
                if(restarted){
                    restartQuizz()
                }else{
                    restarted = true
                }
            }
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
        }
    }
    
    func restartQuizz(){
        restarted = false
        count = 0
        questionLabel.text = quizz[count].text
        trueButton.setTitle( "True", for: UIControl.State.normal)
        falseButton.isHidden = false
        answers = []
    }
}

