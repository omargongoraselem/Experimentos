//
//  Register.swift
//  Practica
//
//  Created by agustin soto on 30/01/16.
//  Copyright © 2016 agustin soto. All rights reserved.
//

import UIKit

class Register: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var UITextField_Email: UITextField!
    @IBOutlet var UITextField_Password: UITextField!
    @IBOutlet var UITextField_PasswordRepeat: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField == UITextField_Email) {
            UITextField_Password.becomeFirstResponder();
        }
        if (textField == UITextField_Password) {
            UITextField_PasswordRepeat.becomeFirstResponder();
        }
        if (textField == UITextField_PasswordRepeat) {
            UITextField_PasswordRepeat.resignFirstResponder();
        }
        return true;
    }
    @IBAction func UIButton_ResignKeyboard(sender: AnyObject) {
        resignFirstResponder() ;
        self.view.endEditing(true);
        
    }

    @IBAction func UIButton_Accept(sender: UIButton) {
        let UserEmail = UITextField_Email.text;
        let UserPassword = UITextField_Password.text;
        if (UserEmail != "" ){
            
              if (UserEmail! .containsString("@")){
                   if (UITextField_Password.text == UITextField_PasswordRepeat.text && UserPassword != ""){
                    
                    let UserPassword = UITextField_Password.text;
                    NSUserDefaults.standardUserDefaults().setObject(UserEmail, forKey: "UserEmail");
                    NSUserDefaults.standardUserDefaults().setObject(UserPassword, forKey: "UserPassword");
                    NSUserDefaults.standardUserDefaults().synchronize();
                    performSegueWithIdentifier("Register_Login", sender: self)
                    
                    Alerta("User Created");
                    
                    }else{
                    
                       Alerta("Passwords dont math");
                       UITextField_Password.becomeFirstResponder();
                     }

              }else {
                 Alerta("Email Format Invalid");
                 UITextField_Email.becomeFirstResponder();
                }
            
        }else{
          Alerta("Missing User Name");
          UITextField_Email.becomeFirstResponder();
         
        }
        
    }
    
    
    func Alerta (UserMessage:String){
       
        var Alert = UIAlertController(title: "Alert", message: UserMessage, preferredStyle: UIAlertControllerStyle.Alert);
        let Ok = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil);
        Alert.addAction(Ok);
        self.presentViewController(Alert, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func UIButton_IHaveAnAccount(sender: AnyObject) {
        
        performSegueWithIdentifier("Register_Login", sender: self);
        
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
