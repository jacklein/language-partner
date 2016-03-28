//
//  EditProfileViewController.swift
//  LanguagePartner
//
//  Created by Jack Klein on 3/9/16.
//  Copyright © 2016 Jack Klein. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {
    

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var language: UILabel!
    @IBOutlet weak var hometown: UILabel!
    @IBOutlet weak var school: UILabel!
    @IBOutlet weak var about: UILabel!
    @IBOutlet weak var biography: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        // updates labels after editing
        fullName.text = (user.firstName ?? "My Name") + " " + (user.lastName ?? "")
        language.text = "Learning " + (user.language ?? "no language")
        hometown.text = "Hometown: " + (user.hometown ?? "N/A")
        school.text = "School: " + (user.school ?? "N/A")
        about.text = "About \(user.firstName ?? ""):"
        biography.text = user.biography ?? "N/A"
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
