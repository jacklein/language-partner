//
//  PartnerProfileViewController.swift
//  LanguagePartner
//
//  Created by Jack Klein on 3/9/16.
//  Copyright © 2016 Jack Klein. All rights reserved.
//

import UIKit

// DON'T WANT TOOLBAR PRESENT IN THIS VIEW 
class PartnerProfileViewController: UIViewController {
    // holds all the attributes for the labels
    var person: Person?
    
    // the attributes of each language partner
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var language: UILabel!
    @IBOutlet weak var hometown: UILabel!
    @IBOutlet weak var school: UILabel!
    @IBOutlet weak var about: UILabel!
    @IBOutlet weak var biography: UILabel!
    @IBOutlet weak var message: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        // sets the partner's info
        if let p = person{
            name.text = (p.firstName ?? "") + " " + (p.lastName ?? "")
            language.text = "Speaks " + (p.language ?? "")
            hometown.text = "Hometown: " + (p.hometown ?? "N/A")
            school.text = "School: " + (p.school ?? "N/A")
            about.text = "About \(p.firstName ?? ""):"
            biography.text = p.biography ?? "N/A"
            message.setTitle("Send \(p.firstName ?? "") a Message", forState: UIControlState.Normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
