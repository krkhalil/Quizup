//
//  QuestionViewController.swift
//  Quizup
//
//  Created by Reactive Space 1 on 23/07/2019.
//  Copyright © 2019 Reactive Space 1. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    var titleToSend = ""
    
    var allQuestionHistory = QuestionBankHistory()
    var allQuestionGeography = QuestionBankGeography()
    var allQuestionScience = QuestionBankScience()
    var allQuestionReligion = QuestionBankReligion()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if titleToSend == "History"{
             allQuestionHistory = QuestionBankHistory()
        }
        
        else if titleToSend == "Geography"{
             allQuestionGeography = QuestionBankGeography()
        }
        
        else if titleToSend == "Science"{
            allQuestionScience = QuestionBankScience()
        }
        
        else if titleToSend == "Religion"{
            allQuestionReligion = QuestionBankReligion()
        }
        self.title = titleToSend
        questionLabel.numberOfLines = 0
        questionLabel.preferredMaxLayoutWidth = 700
        questionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        questionLabel.sizeToFit()
        
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
            
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        updateUI()

    }
    
    // This method will update all the views on screen (progress bar, score label, etc)
    func updateUI() {
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.beginFromCurrentState], animations: {
            
            self.progressBar.frame.size.width = (self.view.frame.size.width / 15) * CGFloat(self.questionNumber)
            
        }, completion: nil)
        
        progressLabel.text = String(questionNumber) + "/15"
        
        scoreLabel.text = "Score: " + String(score)
        
        nextQuestion()
    }
    
    //This method will update the question text and check if we reached the end.
    func nextQuestion() {
        
        if questionNumber <= 14 {
            if titleToSend == "History"{
                questionLabel.text = allQuestionHistory.list[questionNumber].questionText
            }
            else if titleToSend == "Geography"{
                questionLabel.text = allQuestionGeography.list[questionNumber].questionText
            }
            else if titleToSend == "Science"{
                questionLabel.text = allQuestionScience.list[questionNumber].questionText
            }
            else if titleToSend == "Religion"{
                questionLabel.text = allQuestionReligion.list[questionNumber].questionText
            }

        }
        else {
            let alert = UIAlertController(title: "Awesome", message: "You've got \(score) scores, do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { UIAlertAction in
                //self.startOver()
                self.navigationController?.popViewController(animated: true)
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    //This method will check if the user has got the right answer.
    func checkAnswer() {
        var correctAnswer = Bool()
        if questionNumber <= 14 {
            if titleToSend == "History"{
                correctAnswer = allQuestionHistory.list[questionNumber].answer
            }
            else if titleToSend == "Geography"{
                correctAnswer = allQuestionGeography.list[questionNumber].answer
            }
            else if titleToSend == "Science"{
                correctAnswer = allQuestionScience.list[questionNumber].answer
            }
            else if titleToSend == "Religion"{
                correctAnswer = allQuestionReligion.list[questionNumber].answer
            }
        }
        
        if correctAnswer == pickedAnswer {
            
            ProgressHUD.showSuccess("Correct!")
            score = score + 1
        }
        else {
            
            ProgressHUD.showError("Wrong!")
        }
    }

    //This method will wipe the board clean, so that users can retake the quiz.
    func startOver() {
        
        questionNumber = 0
        score = 0
        
        updateUI()
        
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
