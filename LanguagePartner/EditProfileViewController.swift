//
//  EditProfileViewController.swift
//  LanguagePartner
//
//  Created by Jack Klein on 3/9/16.
//  Copyright © 2016 Jack Klein. All rights reserved.
//

import UIKit

class EditProfileViewController: UITableViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var homeField: UITextField!
    @IBOutlet weak var schoolField: UITextField!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var bioLabel: UITextField!

    @IBOutlet var fields: [UITextField]!
    
    override func viewWillAppear(animated: Bool) {
        // have to create local variables in order to properly print first + last names
        let first = user.firstName ?? ""
        let last = user.lastName ?? ""
        
        // loads user details
        nameField.text = "\(first)\(last)" == "" ? "" : first + " " + last
        homeField.text = user.hometown ?? ""
        schoolField.text = user.school ?? ""
        languageLabel.text = user.language ?? "N/A"
        bioLabel.text = user.biography ?? ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    // updates user info if info has changed
    @IBAction func infoDidChange(sender: UITextField) {
        // each text field has a tag
        switch sender.tag{
        case 0:
            // handles first and last name
            let fullName = sender.text ?? ""
            let fullNameArr = fullName.componentsSeparatedByString(" ")
            user.firstName = fullNameArr[0]
            user.lastName = fullNameArr.count > 1 ? fullNameArr[1] : ""
        case 1:
            user.hometown = sender.text
        case 2:
            user.school = sender.text
        case 3:
            user.biography = sender.text
        default:
            print("what?")
        }
    }
    
    // returns to profile after done button is pressed
    @IBAction func DonePressed(sender: UIBarButtonItem)
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // return key pressed on keyboard, end 
    @IBAction func editEnded(sender: UITextField) {
        sender.resignFirstResponder()
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    // building the rows for each section
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        // customized for the # of rows in each section
        let numberOfRowsAtSection = [3,1,1]
        var rows = 0
        if(section < numberOfRowsAtSection.count){
            rows = numberOfRowsAtSection[section]
        }
        return rows
    }


    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
