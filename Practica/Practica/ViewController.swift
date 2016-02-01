//
//  ViewController.swift
//  Practica
//
//  Created by agustin soto on 29/01/16.
//  Copyright © 2016 agustin soto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var UITextField_Password: UITextField!
    @IBOutlet var UITextField_User: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        
    }

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
       
        if (textField == UITextField_User) {
            UITextField_Password.becomeFirstResponder();
        }
        if (textField == UITextField_Password) {
           UITextField_Password.resignFirstResponder()   ;
        }
        
        return true;
    }
    @IBAction func UIButton_Login(sender: UIButton) {
        
        let User = UITextField_User.text;
        let Password = UITextField_Password.text;
        
        let User_DataBase = NSUserDefaults.standardUserDefaults().stringForKey("UserEmail");
        let Password_DataBase = NSUserDefaults.standardUserDefaults().stringForKey("UserPassword");
        if (User == User_DataBase && Password == Password_DataBase){
            
            Alerta("Login Succesfull", Boton: "Continue");
          
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "User Logged In");
            NSUserDefaults.standardUserDefaults().synchronize();
            performSegueWithIdentifier("Protected", sender: nil);
            
         //   let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("Protected")
           // presentViewController(nextViewController, animated: true, completion: nil)
           // showViewController(nextViewController, sender: self)
            
        }else{
            
            Alerta("Login error, check password and user name!", Boton: "Continue");
    
        }
        
    }
    
    func Alerta(Mensaje:String, Boton:String){
        
        var Alerta = UIAlertController (title: "Important", message: Mensaje, preferredStyle: UIAlertControllerStyle.Alert);
        var Boton = UIAlertAction(title: Boton, style: UIAlertActionStyle.Default, handler: nil)
        
        Alerta.addAction(Boton);
        
        self.presentViewController(Alerta, animated: true, completion: nil);
        
    }
    
    @IBAction func UIButton_Fondo(sender: UIButton) {
        UITextField_Password.resignFirstResponder();
    }
   
   

}

