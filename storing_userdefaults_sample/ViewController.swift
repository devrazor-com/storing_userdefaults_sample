//
//  ViewController.swift
//  storing_userdefaults_sample
//
//  Created by Victor on 2020-07-13.
//  Copyright © 2020 devrazor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username_entered: UITextField!
    @IBOutlet weak var username_found: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let path: [AnyObject] = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true) as [AnyObject]
        let folder: String = path[0] as! String
        NSLog("Your NSUserDefaults are stored in this folder: %@/Preferences", folder)
        
    }

    
    
    @IBAction func add_username(_ sender: Any) {
        UserDefaults.standard.set(username_entered.text, forKey: "UserName")
    }
    
    
    @IBAction func retrieve_username(_ sender: Any) {
        
        var strnamefound: String = ""
        
        username_found.text = UserDefaults.standard.string(forKey: "UserName")
        
        strnamefound = String(username_found.text ?? "")
        
        if (strnamefound != ""){
            username_found.text = strnamefound
        }else {
            username_found.text = "Name not found!"
        }
    }
    
    
    @IBAction func delete_username(_ sender: Any) {
        
        UserDefaults.standard.set(nil, forKey: "UserName")
        
    }
    
    

}

