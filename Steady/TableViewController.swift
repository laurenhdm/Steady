//
//  TableViewController.swift
//  Steady
//
//  Created by Lauren Moran on 7/15/20.
//  Copyright © 2020 Lauren Moran. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    //   func createEvent () -> [Event] {
    //       let work = Event()
    //       work.eventName = ""
    //       work.eventCategory = ""
    //
    //       let mindful = Event()
    //       mindful.eventName = ""
    //
    //       return [work, mindful]
    //   }
    var events : [EventCD] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        func getEvents() {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                
                if let coreDataEvents = try? context.fetch(EventCD.fetchRequest()) as? [EventCD] {
                    events = coreDataEvents
                }
            }
            
        }
        
        func viewWillAppear(_ animated: Bool) {
            getEvents()
        }
        
        
        //        events = createEvent()
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // MARK: - Table view data source
        
        //    override func numberOfSections(in tableView: UITableView) -> Int {
        //        // #warning Incomplete implementation, return the number of sections
        //        return 0
        //    }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let event = events[indexPath.row]
            
            // this gives us a single ToDo
            
            performSegue(withIdentifier: "moveToComplete", sender: event)
        }
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return events.count
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
            
            // Configure the cell...
            let Events = events[indexPath.row]
            
            if let name = Events.name{
                if Events.mindful {
                    cell.textLabel?.text = "⭐️" + name }
                else {
                    cell.textLabel?.text = Events.name
                }
                
            }
            
            return cell
            
            /*
             // Override to support conditional editing of the table view.
             override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
             // Return false if you do not want the specified item to be editable.
             return true
             }
             */
            
            /*
             // Override to support editing the table view.
             override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
             if editingStyle == .delete {
             // Delete the row from the data source
             tableView.deleteRows(at: [indexPath], with: .fade)
             } else if editingStyle == .insert {
             // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
             }
             }
             */
            
            /*
             // Override to support rearranging the table view.
             override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
             
             }
             */
            
            /*
             // Override to support conditional rearranging of the table view.
             override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
             // Return false if you do not want the item to be re-orderable.
             return true
             }
             */
            
            // MARK: - Navigation
            
            // In a storyboard-based application, you will often want to do a little preparation before navigation
            //    var newEvent: String = ""
            
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                // Get the new view controller using segue.destination.
                // Pass the selected object to the new view controller.
                if let addVC = segue.destination as? AddEventViewController {
                    addVC.previousVC = self
                }
                if let completeVC = segue.destination as? CompleteEventViewController {
                    if let event = sender as? Event {
                        completeVC.selectedEvent = event
                        completeVC.previousVC = self
                    }
                }
            }
            
        }
    }
}
