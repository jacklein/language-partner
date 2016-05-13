//
//  ViewController.swift
//  LanguagePartner
//
//  Created by Jack Klein on 3/6/16.
//  Copyright © 2016 Jack Klein. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet var textFields: [UITextField]!
    
    // return key on keyboard touched, end
    @IBAction func editEnded(sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    // BG touched, exit keyboards
    @IBAction func backgroundTouched(sender: AnyObject) {
        for tf in textFields{
            tf.resignFirstResponder()
        }
    }
    
    // login pressed
    @IBAction func loginPressed(sender: UIButton) {
        let ref = Firebase(url: "https://language-partner.firebaseio.com")
        //let usersRef = ref.childByAppendingPath("users")
        
        let e = email.text! ?? ""
        let p = password.text! ?? ""
        //let user = ["email": e, "password": p]
        //usersRef.childByAppendingPath("Jack").setValue(user)
        
        ref.createUser(e, password: p,
            withValueCompletionBlock: {error, result in
                if error != nil{
                    
                }
                else {
                    let uid = result["uid"] as? String
                    //print("Successfully created user account with uid: \(uid)")
                }
                
        })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

