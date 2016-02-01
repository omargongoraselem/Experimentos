//
//  Protected.swift
//  Practica
//
//  Created by agustin soto on 31/01/16.
//  Copyright © 2016 agustin soto. All rights reserved.
//

import UIKit

class Protected: UIViewController, UITextFieldDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        var Logged = NSUserDefaults.standardUserDefaults().boolForKey("User Logged In");
        if Logged{
            
        }
        else{
            
            performSegueWithIdentifier("Login", sender: nil);
            
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func UIButton_Logout(sender: UIButton) {
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "User Logged In");
        performSegueWithIdentifier("Login", sender: nil);

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
