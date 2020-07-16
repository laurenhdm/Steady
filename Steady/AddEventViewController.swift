//
//  AddEventViewController.swift
//  Steady
//
//  Created by Lauren Moran on 7/15/20.
//  Copyright © 2020 Lauren Moran. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    let vc = AddEventViewController()
    
    @IBOutlet weak var AddEvent: UITextField!
    @IBOutlet weak var SelectDate: UIDatePicker!
    @IBOutlet weak var MindfulSwitch: UISwitch!
    @IBAction func DoneButton(_ sender: UIButton) {
        
        let event = Event()
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.short
        dateFormatter.dateStyle = DateFormatter.Style.short
        let strDate = dateFormatter.string(from:
            SelectDate.date)
        //maybe this will work????

          if let eventTitle = AddEvent.text {
            event.eventName = eventTitle
            event.eventMindful = MindfulSwitch.isOn
            event.eventTime = strDate
            event.eventCategory = pickerData[0]
          }
    }
        
    
    @IBOutlet weak var SelectType: UIPickerView!
    
    var pickerData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.SelectType.delegate = self
        self.SelectType.dataSource = self
        
        pickerData = ["Mindfulness", "Work", "School", "Homework", "Personal", "Social"]

        
        // Do any additional setup after loading the view.
    }

    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {return 1}
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {return pickerData.count}
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {return pickerData[row]}

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }



