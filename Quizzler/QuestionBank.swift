////
////  QuestionBank.swift
////  Quizzler
////
////  Created by Activelink on 08/09/2018.
////  Copyright © 2018 London App Brewery. All rights reserved.
////
//
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "A slug\'s blood is green.", correctAnswer: true))
        
        list.append(Question(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        list.append(Question(text: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        list.append(Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        list.append(Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        list.append(Question(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        list.append(Question(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        list.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        list.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        list.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
    }
    
}




////this file is to store all of our questions. And all these questions will be formatted using the question class so they will each have a question task as well as answer property.
//
////So now we've created our datamodel, datamodel are used to manage and manipulate data. So we have this question bank that contains the 13 question object and we're going to use those question in our app in order to display the question and check for the answers.
//
//import Foundation
//
//class QuestionBank {
//                //equals to an array
//    var list =  [Question]() //will contain question objects
//
//    //and in order to fill it with content we're going to use initialization method again
//    init() {
//
////think of this line as the format for the above codes, each line of codes below will be formatted into this line, in which we implemented on the Question file.
//                                    //creating a new question + usingthe initialization method.
//      //  let newQuestionObject = Question(text: "data", correctAnswer: true) //this code
//        // Creating a quiz item and appending it to the list
//        let item = Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)
//
//        //Add the Question to the list of questions
//        list.append(item)
//
//        //skipping one step and just creating the quiz item inside the append function
//        list.append(Question(text: "A slug\'s blood is green.", correctAnswer: true))
//
//        list.append(Question(text: "The total surface area blah blah", correctAnswer: false))
//
//        ///etc etc etc, everything is formatted and will skip things up to save time in writing
//    }
//
//}
