//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Tomahawk Africa Tindo on 8/19/15.
//  Copyright (c) 2015 Tomahawk Africa Tindo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rock: UIButton?
    @IBOutlet weak var paper: UIButton?
    @IBOutlet weak var scissors: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func autoPlay() -> NSString {
        var selection = "rock"
        let choose = 1 + arc4random() % 3
        switch choose {
            case 1:
                selection = "rock"
            case 2:
                selection = "paper"
            default:
                selection = "scissors"
        }
        return selection
    }
    
    @IBAction func play(sender: UIButton) {
        var playSelect = sender.titleLabel?.text
        var playSelection = playSelect!
        var aiPlay = autoPlay()
        var winner = ""
        var status = ""
        switch(playSelection) {
            case "Rock":
                if(aiPlay == "scissors") {
                    winner = "rock"
                    status = "win"
                } 
                else if(aiPlay == "paper") {
                    winner = "paper"
                    status = "lose"
                } else {
                    status = "draw"
                }
            case "Paper":
                if(aiPlay == "rock") {
                    winner = "paper"
                    status = "win"
                } 
                else if(aiPlay == "scissors") {
                    winner = "scissors"
                    status = "lose"
                } else {
                    status = "draw"
                }
            case "Scissors":
                if(aiPlay == "paper") {
                    winner = "scissors"
                    status = "win"
                } 
                else if(aiPlay == "rock") {
                    winner = "rock"
                    status = "lose"
                } else {
                    status = "draw"
                }
            default:
                status = "unknown"
                winner = "uh oh, dunno"
        }
        
        var nextController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultController") as! ResultController
        nextController.status = status
        nextController.winner = winner
        self.presentViewController(nextController, animated: true, completion: nil)
    }


}

