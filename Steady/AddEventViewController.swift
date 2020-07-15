//
//  AddEventViewController.swift
//  Steady
//
//  Created by Lauren Moran on 7/15/20.
//  Copyright © 2020 Lauren Moran. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController {

    
    @IBOutlet weak var AddEvent: UITextField!
    @IBOutlet weak var SelectType: UIPickerView!
    @IBOutlet weak var SelectDate: UIDatePicker!
    @IBOutlet weak var MindfulSwitch: UISwitch!
    @IBAction func DoneButton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
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
