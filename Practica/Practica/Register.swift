//
//  Register.swift
//  Practica
//
//  Created by agustin soto on 30/01/16.
//  Copyright © 2016 agustin soto. All rights reserved.
//

import UIKit

class Register: UIViewController {

    @IBOutlet var UITextField_email: UIView!
    @IBOutlet var UITextField_Password: UIView!
    @IBOutlet var UITextField_PasswordRepeat: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func UIButton_Accept(sender: UIButton) {
        let UserEmail = UITextField_email;
        let UserPassword = UITextField_Password;
        if (UserEmail != nil){
        if (UITextField_Password == UITextField_PasswordRepeat){
            let UserPassword = UITextField_Password;
        } else{
            let Alert = UIAlertController(title: "Alert", message: "Passwords dont math", preferredStyle: UIAlertControllerStyle.Alert)
             let Ok = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil);
            Alert.addAction(Ok);
            self.presentViewController(Alert, animated: true, completion: nil)
            }
        }else{
            let Alert = UIAlertController(title: "Alert", message: "missing user name ", preferredStyle: UIAlertControllerStyle.Alert)
            let Ok = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil);
            Alert.addAction(Ok);
            self.presentViewController(Alert, animated: true, completion: nil)

        }
        NSUserDefaults.standardUserDefaults().setObject(UserEmail, forKey: "UserEmail");
        NSUserDefaults.standardUserDefaults().setObject(UserPassword, forKey: "UserPassword");
        NSUserDefaults.standardUserDefaults().synchronize();
        let Alert = UIAlertController(title: "Alert", message: "Pthanks", preferredStyle: UIAlertControllerStyle.Alert)
        let Ok = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil);
        Alert.addAction(Ok);
        self.presentViewController(Alert, animated: true, completion: nil)
        
        
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
