//
//  Http.swift
//  Practica
//
//  Created by agustin soto on 01/02/16.
//  Copyright © 2016 agustin soto. All rights reserved.
//

import Foundation
import UIKit

class Http: UIViewController{
    
    @IBOutlet var UITextField_City: UITextField!
    
    @IBAction func UIButton_GetData(sender: UIButton) {
    }
    @IBOutlet var UILabel_CityName: UILabel!
    
    @IBOutlet var UILabel_CityTemperature: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getWeather("http://api.openwathermap.org/data/2.5/weather?q=London,uk");
    }
    
    func getWeather (urlString:String){
        let url = NSURL(string: urlString);
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            dispatch_async(dispatch_get_main_queue(),{
                self.SetLabel(data!);
            })
            
        }
        
    }
    
    func SetLabel (WeatherData:NSData){
        do{
        
            let json = NSJSONSerialization.JSONObjectWithData (WeatherData, options: []) as? NSDictionary{
                
            }catch {
    
    
    }
    
    
    }

}