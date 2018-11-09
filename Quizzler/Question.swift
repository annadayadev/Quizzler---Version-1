//
//  Question.swift
//  Quizzler
//
//  Created by Activelink on 08/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//


/*
 Class - And if its not within a class, if its just free floating then its a function.
 Method - a method is a function that's associated with a class. So if it's within the curly braces of a class, then its a method.
 
 Classes - should have capitalized first letter
 
 Object - should have small first letter
 
 */


import Foundation

//SO THIS IS THE EQUIVALENT OF OUR BLUEPRINT for what the question would look like. Every question should have a question text, as well as a question answer.
class Question {
    //we'll use an initializer, and
    let questionText : String
    let answer : Bool
    
//at the moment, if you have a look at these 2 properties above, you can see that they dont have a value associated with them, no equal to,  and thats eseentially what you do when you initialize a property.
    
//this method determines what happens when a new question object is created from this question class
//So this initializer takes two parameters and those thats inside the curly braces will then determine what will happen when this class is initialized
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}

//remember classes are like a blueprint and the object is what gets created from that blueprint.
/*
class myOtherClass {
    //so now we created our first question
    let question =  Question(text: "What's the meaning of life?", correctAnswer: true)
    
    //and our second question
    let question2 = Question(text: "Who's there?", correctAnswer: false)
}

*/





















