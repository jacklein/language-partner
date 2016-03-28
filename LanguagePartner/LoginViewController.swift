//
//  ViewController.swift
//  LanguagePartner
//
//  Created by Jack Klein on 3/6/16.
//  Copyright © 2016 Jack Klein. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

