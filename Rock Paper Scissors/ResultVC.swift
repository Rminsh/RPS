//
//  ResultVC.swift
//  Rock Paper Scissors
//
//  Created by armin on 8/1/18.
//  Copyright © 2018 armin. All rights reserved.
//

import UIKit
import GameplayKit

class ResultVC: UIViewController {
    
    var userChoice: String!
    @IBOutlet weak var userChoiceLabel: UILabel!
    @IBOutlet weak var computerChoiceLabel: UILabel!
    @IBOutlet weak var challengeStatus: UILabel!
    let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userChoiceLabel.text = userChoice
        computerChoiceLabel.text = randomSign().rawValue
        challengeStatus.text = calculateResult(user: userChoiceLabel.text!, computer: computerChoiceLabel.text!)
    }
    @IBAction func playAgainPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func randomSign() -> Sign {
        let sign = randomChoice.nextInt()
        if sign == 0 {
            return .rock
        } else if sign == 1 {
            return .paper
        } else {
            return .scissors
        }
    }
    
    func calculateResult(user: String , computer: String) -> String {
        if user == computer {
            return "Draw!"
        } else if (user == "👊🏻" && computer == "✋🏻") || (user == "✋🏻" && computer == "✌🏻") || (user == "✌🏻" && computer == "👊🏻") {
            return "You Lose"
        } else {
            return "You win!"
        }
    }
}
