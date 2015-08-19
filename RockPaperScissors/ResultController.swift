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
        self.resultImg?.image = UIImage(named: "PaperCoversRock")
        self.result?.text = "Paper Won!"
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
