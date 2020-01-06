//
//  Question.swift
//  Quizup
//
//  Created by Reactive Space 1 on 23/07/2019.
//  Copyright © 2019 Reactive Space 1. All rights reserved.
//

import Foundation

class Question {
    
    let answer : Bool
    let questionText : String
    
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
