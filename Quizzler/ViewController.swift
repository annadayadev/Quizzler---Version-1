//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false  //this will going to hold the value that the user picked, it'll be type boolean
    var questionNumber : Int = 0
    var score : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

//first question starts 0, then 1, 2, 3 etc
//        let firstQuestion = allQuestions.list[0]
//        questionLabel.text = firstQuestion.questionText
    //we comment out those codes above because we can simply call this function that is equivalent of those 2 lines
        
       // nextQuestion()
        updateUI()
        
 //so in order for us to check whether if the user got the answer right/wrong we have to compare their selected answer versus the correct answer
        
    }

//when the buttons are clicked, this function here will be the one that's been triggered.
    @IBAction func answerPressed(_ sender: AnyObject) {
        //true = 1, and false is tagged as 2.
        if sender.tag == 1 {
            pickedAnswer = true
        }
            
        else if sender.tag == 2 {
            pickedAnswer = false
        }
//here we then call the method, use func keyword, give it a name and use the round brackets to determine whether we should have any inputs
        
/* After the check answer is called, we're going to increase the question number this variable from 0 to 1
         questionNumber = questionNumber + 1
*/
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
       // nextQuestion() -- go to next question
         updateUI()
    }
    
    
func updateUI() {
    
    scoreLabel.text = "Score: " + String(score)
        //scoreLabel.text = "Score: \(score)"
    
//        progressLabel.text = "\(questionNumber + 1) / 13"
    progressLabel.text = String(questionNumber) + "/13"
    
    
    
//without using CGFloat, we will have an error because the width is at float or with decimal while question number is integer, so we have it under this format to fix the error.
        
//        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber)
    
        nextQuestion()
    }


/* in order to proceed to the next question,
 
    //instead of harcoding the number, we're going to use questionNumber to grab the current question and then we're going to tap into teh question text property, questionText
 */
    func nextQuestion() {
        //we'll create if statement of our question number if its less than or equal to 12
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
        } else {
            let alert = UIAlertController(title: "Awesome", message: "You have finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            //self - whenever you see the word in, always include/use the self method
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { UIAlertAction in self.startOver()
                ///here you can put all the functionality that you want when the restart action is pressed. But instead we'll use the func startOver
            })

            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
 //checking the answer using pickedanswer above
    func checkAnswer() {
  
/* we created a constant, a container to hold the value of the first question and what to get. And on order to get our first question, we're tapping into our data bank which is called Allquestions and we're getting the list array out from that data bank and we want to grab the zeroth element.
         
    And instead of getting the question text property we now want the answer property. So instead of displaying it into the question label , we can hold it in a constant, so we replace it with answer,  and the question text will also be replaced, here we would be tapping into the answer property.
 
 */
        
    //    let firstQuestion = allQuestions.list[0]
        //questionLabel.text = firstQuestion.questionText
    //    let answer = firstQuestion.answer
//the above line code -> but instead of doing this where we are tapping into the answer property of first question you can simply add the answer next to the list[0], so this then cut lines into a single one.
        
/*so this becomes one single line, here we have achieved the equivalent of those 2 lines above, where we tap into our question bank, grab the array called list, find the zeroth element in this list and grab its anwer property and then we assigned it to a constant called correctAnswer.
 
 So now we have this constant correct answer that holds the correctanswer from the first question.
and then we're going to compare it against the picked answer by using if statement.
 */
                                        //to make sure that if the answer is correct then it will be correct, and if its wrong then it should be wrong
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
           // print("You got it!")
            
            ProgressHUD.showSuccess("You are correct!")
            
            score = score + 1
            
        } else {
            
           ProgressHUD.showError("Sorry, you got it wrong")
          
        }
    }
    
//    HUD = Head-up Display - search this library/plugin on github, and incorporate, its a third-library tool we added on supporting files and then imported on the quizzler header under the progresshud folder
    
// in order to start over, then all we do is to reset the question number that tracks which question we're currently on, and we'll reset it to 0
    func startOver() {
        
        questionNumber = 0
        score = 0
        
        updateUI()
    }
    
}
