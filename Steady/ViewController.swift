//
//  ViewController.swift
//  Steady
//
//  Created by Lauren Moran on 7/13/20.
//  Copyright © 2020 Lauren Moran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showMessage(sender: UIButton) {
        
        let emojis = ["✨": "Feeling Zesty!", "🧃": "Feeling Mindful!", "🥀": "Feeling hopeless...", "🥌": "Feeling Motivated!", "🍠": "Feeling YAMMY, BABY!!"]
        
        let customMessages = ["Feeling Zesty!": ["As you should!!", "Let's use that beautiful energy for good!"], "Feeling Mindful!": ["Good; take some time for yourself!", "Use this time to take a break, and let go of any lingering stress.", "May the odds be ever in your favor ;)"], "Feeling hopeless...": ["THIS IS WHERE LILA HELPS"], "Feeling Motivated!": ["You've got this!!!", "You're going to get through it, I promise.", "You are creative and loved and wonderful."], "Feeling YAMMY, BABY!!": ["yeah<3", "your mom haha", "are you REALLY alright?", "You're more than enough."]]
        
        let selectedEmotion = sender.titleLabel?.text
        let options = customMessages[emojis[selectedEmotion!]!]
        let emojiMessage = options![0]// here I want to extract the word that goes with my emoji
       // then find that word in the dictionary
       // get it's value (array)
       // and access the first element (for now)
        
        let alertController = UIAlertController()
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

