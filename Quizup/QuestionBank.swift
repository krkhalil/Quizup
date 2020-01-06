//
//  QuestionBank.swift
//  Quizup
//
//  Created by Reactive Space 1 on 23/07/2019.
//  Copyright © 2019 Reactive Space 1. All rights reserved.
//

import Foundation

class QuestionBankHistory {
    
    var list = [Question]()
    
    init() {
        
        // Add the Question to the list of questions
        list.append(Question(text: "Mexico achieved independence before USA", correctAnswer: false))
        
        list.append(Question(text: "Henry VIII wife Anne Boleyn was executed", correctAnswer: true))
        
        list.append(Question(text: "Alexander the Great became Pharaoh of Egypt", correctAnswer: true))
        
        list.append(Question(text: "The Parthenon was built before the Colossus of Rhodes", correctAnswer: true))
        
        list.append(Question(text: "The Magna Carta was signed in Rome.", correctAnswer: false))
        
        list.append(Question(text: "Nero was the first Roman Emperor", correctAnswer: false))
        
        list.append(Question(text: "No US Presidents have been born in Missouri", correctAnswer: false))
        
        list.append(Question(text: "Norway separated from Sweden in the 20th Century", correctAnswer: true))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        list.append(Question(text: "Genghis Khan's real name was Temujin", correctAnswer: true))
        
        list.append(Question(text: "Napoleon Bonaparte's first wife was a widow", correctAnswer: true))
        
        list.append(Question(text: "Columbus crossed the Atlantic in the Mary Rose", correctAnswer: false))
        
        list.append(Question(text: "Socrates was sentenced to death", correctAnswer: true))
        
        list.append(Question(text: "The Berlin Wall was constructed by East Germany", correctAnswer: true))
        
        list.append(Question(text: "Billy the Kid never actually shot anyone dead", correctAnswer: false))
    }
    
}



class QuestionBankGeography {
    
    var list = [Question]()
    
    init() {
        
        // Add the Question to the list of questions
        list.append(Question(text: "Brasília is the capital city of Brazil", correctAnswer: true))
        
        list.append(Question(text: "The Indian Ocean is the third largest ocean in the world", correctAnswer: true))
        
        list.append(Question(text: "There are more countries in Africa than Asia", correctAnswer: true))
        
        list.append(Question(text: "The city of Utrecht is in Holland", correctAnswer: false))
        
        list.append(Question(text: "Seattle is more northerly than New York City.", correctAnswer: true))
        
        list.append(Question(text: "Rhode Island has a greater population than Mongolia", correctAnswer: false))
        
        list.append(Question(text: "The island of Borneo is occupied by three countries", correctAnswer: true))
        
        list.append(Question(text: "Mount K2 is higher than Broad Peak", correctAnswer: true))
        
        list.append(Question(text: "The Maldives has the lowest high point of any country", correctAnswer: true))
        
        list.append(Question(text: "Japan has the world's highest life expectancy", correctAnswer: false))
        
        list.append(Question(text: "The world's tallest waterfall is in Venezuela", correctAnswer: true))
        
        list.append(Question(text: "The currency of Switzerland is the Euro", correctAnswer: false))
        
        list.append(Question(text: "China borders the same number of countries as Russia", correctAnswer: true))
        
        list.append(Question(text: "Shanghai has a greater population than Beijing", correctAnswer: true))
        
        list.append(Question(text: "Johannesburg is one of South Africa's three capital cities", correctAnswer: false))
    }
    
}



class QuestionBankScience {
    
    var list = [Question]()
    
    init() {
        
        // Add the Question to the list of questions
        list.append(Question(text: "The longest bone in the human body is the femur", correctAnswer: true))
        
        list.append(Question(text: "Earth's atmosphere is mostly Nitrogen", correctAnswer: true))
        
        list.append(Question(text: "Joules are a scientific unit of Power.", correctAnswer: false))
        
        list.append(Question(text: "Pluto is considered to be a planet in our solar system.", correctAnswer: false))
        
        list.append(Question(text: "When Hydrogen nuclei fuse, total mass decreases", correctAnswer: true))
        
        list.append(Question(text: "A lightyear is a unit of distance", correctAnswer: true))
        
        list.append(Question(text: "Uranus is bigger than Saturn", correctAnswer: false))
        
        list.append(Question(text: "Ammonia is a compound of Nitrogen and Hydrogen", correctAnswer: true))
        
        list.append(Question(text: "No chemical symbols begin with 'V'", correctAnswer: false))
        
        list.append(Question(text: "sin²θ + cos²θ = 1", correctAnswer: true))
        
        list.append(Question(text: "Jupiter was first discovered by Galileo Galilei", correctAnswer: false))
        
        list.append(Question(text: "Red is higher frequency light than Blue", correctAnswer: false))
        
        list.append(Question(text: "Water has a higher refractive index than glass", correctAnswer: false))
        
        list.append(Question(text: "Avogadro's constant is greater than Planck's constant", correctAnswer: true))
        
        list.append(Question(text: "Albert Einstein never won a Nobel Prize in Physics", correctAnswer: false))
    }
    
}


class QuestionBankReligion {
    
    var list = [Question]()
    
    init() {
        
        // Add the Question to the list of questions
        list.append(Question(text: "Shinto is the largest religion in Japan", correctAnswer: true))
        
        list.append(Question(text: "Over 70% of the Indian population identifies as Hindu", correctAnswer: true))
        
        list.append(Question(text: "ROMAN MYTHOLOGY: Jupiter was the brother of Neptune and Pluto", correctAnswer: true))
        
        list.append(Question(text: "Islam is the world's second-largest religion", correctAnswer: true))
        
        list.append(Question(text: "BUDDHISM: the Buddha lived between 200 and 400 AD", correctAnswer: false))
        
        list.append(Question(text: "EGYPTIAN MYTHOLOGY: Horus was commonly depicted with the head of a jackal", correctAnswer: false))
        
        list.append(Question(text: "Islam,Judaism and Christian all are Abrahamic Religion.", correctAnswer: true))
        
        list.append(Question(text: "Adam is the father of all the human beings", correctAnswer: true))
        
        list.append(Question(text: "There are total of 7 Holy books descended to earth.", correctAnswer: false))
        
        list.append(Question(text: "BIBLE: the final book in the Old Testament is Ezekiel", correctAnswer: false))
        
        list.append(Question(text: "SIKHISM: the founder of Sikhism was Guru Nanak", correctAnswer: true))
        
        list.append(Question(text: "Moses struck a rock 3 times and water came out", correctAnswer: false))
        
        list.append(Question(text: "Noah successfully saved the ship to the shores of water", correctAnswer: true))
        
        list.append(Question(text: "David's wife made a mannequin, complete with hair and clothing, to make Saul think David was sick in bed", correctAnswer: true))
        
        list.append(Question(text: "Jerusalem remained capital for three religions", correctAnswer: true))
    }
    
}








