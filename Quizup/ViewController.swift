//
//  ViewController.swift
//  Quizup
//
//  Created by Reactive Space 1 on 23/07/2019.
//  Copyright © 2019 Reactive Space 1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var titleToSend = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Quizup"
        // Do any additional setup after loading the view.
    }


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segHistory"{
            titleToSend = "History"
            let destinationVC = segue.destination as! QuestionViewController
            destinationVC.titleToSend = titleToSend
        }
        
        else if segue.identifier == "segGeography"{
            titleToSend = "Geography"
            let destinationVC = segue.destination as! QuestionViewController
            destinationVC.titleToSend = titleToSend
        }
            
        else if segue.identifier == "segScience"{
            titleToSend = "Science"
            let destinationVC = segue.destination as! QuestionViewController
            destinationVC.titleToSend = titleToSend
        }
            
        else if segue.identifier == "segReligion"{
            titleToSend = "Religion"
            let destinationVC = segue.destination as! QuestionViewController
            destinationVC.titleToSend = titleToSend
        }
        

    }

    @IBAction func btnHistoryClicked(_ sender: Any) {
        performSegue(withIdentifier: "segHistory", sender: self)
    }
    @IBAction func btnGeographyClicked(_ sender: Any) {
        performSegue(withIdentifier: "segGeography", sender: self)
    }
    @IBAction func btnScienceClicked(_ sender: Any) {
        performSegue(withIdentifier: "segScience", sender: self)
    }
    @IBAction func btnReligionClicked(_ sender: Any) {
        performSegue(withIdentifier: "segReligion", sender: self)
    }
    
}

