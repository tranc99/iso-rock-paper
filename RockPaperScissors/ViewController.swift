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
        return "rock"
    }
    
    @IBAction func play(playSelection: NSString) {
        var aiPlay = autoPlay()
        var winner = ""
        var status = ""
        switch(playSelection) {
            case "rock":
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
            case "paper":
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
            case "scissors":
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
        
        
    }


}

