//
//  CompleteEventViewController.swift
//  Steady
//
//  Created by Maddy Wang on 7/16/20.
//  Copyright © 2020 Lauren Moran. All rights reserved.
//

import UIKit

class CompleteEventViewController: UIViewController {

    var previousVC = TableViewController()
    var selectedEvent : EventCD?

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func eventCompleted(_ sender: UIButton) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
          if let theEvent = selectedEvent {
            context.delete(theEvent)
            navigationController?.popViewController(animated: true)
          }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedEvent?.name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
