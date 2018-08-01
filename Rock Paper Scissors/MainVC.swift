//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by armin on 8/1/18.
//  Copyright © 2018 armin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var choice : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rockBtnPressed(_ sender: Any) {
        choice = "👊🏻"
        self.performSegue(withIdentifier: "showResult", sender: choice)
    }
    
    @IBAction func paperBtnPressed(_ sender: Any) {
        choice = "✋🏻"
        self.performSegue(withIdentifier: "showResult", sender: choice)
    }
    
    @IBAction func scissors(_ sender: Any) {
        choice = "✌🏻"
        self.performSegue(withIdentifier: "showResult", sender: choice)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ResultVC{
            
            if (sender as? String) != nil{
                destination.userChoice = choice
            }
        }
    }
}

