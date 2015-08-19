//
//  ResultController.swift
//  RockPaperScissors
//
//  Created by Tomahawk Africa Tindo on 8/19/15.
//  Copyright (c) 2015 Tomahawk Africa Tindo. All rights reserved.
//

import Foundation
import UIKit

class ResultController: UIViewController {
    
    @IBOutlet weak var resultImg: UIImageView?
    @IBOutlet weak var result: UILabel?
    @IBOutlet weak var play: UIButton?
    
    var winner = ""
    var status = ""
    
    override func viewWillAppear(animated: Bool) {
        var statusLabel = ""
        switch winner {
            case "rock":
                self.resultImg?.image = UIImage(named: "RockCrushesScissors")
                statusLabel = "Rock Crushes Scissors!"
            case "paper":
                self.resultImg?.image = UIImage(named: "PaperCoversRock")
                statusLabel = "Paper Covers Rock!"
            case "scissors":
                self.resultImg?.image = UIImage(named: "ScissorsCutPaper")
                statusLabel = "Scissors Cuts Paper!"
            default:
                statusLabel = "Uh oh no one won"
        }
        
        if(status == "win") {
            self.result?.text = "You won! \(statusLabel)"
        } else if(status == "lose") {
            self.result?.text = "You lost! \(statusLabel)"
        } else if(status == "draw") {
            self.result?.text = "You drew! Try again?"
        } else {
            self.result?.text = "Uh on, dunno who won. Try again?"
        }
       
        self.resultImg!.alpha = 0


    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3, animations: {
            self.resultImg!.alpha = 1

        })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultImg!.alpha = 1

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
