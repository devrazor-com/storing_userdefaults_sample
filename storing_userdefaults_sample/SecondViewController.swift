//
//  SecondViewController.swift
//  storing_userdefaults_sample
//
//  Created by Victor on 2020-07-13.
//  Copyright © 2020 devrazor. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var username_found: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func find_username(_ sender: Any) {
   
    var strnamefound: String = ""
    
    strnamefound = UserDefaults.standard.string(forKey: "UserName") ?? ""
            
    if (strnamefound != ""){
        username_found.text = strnamefound
    }else {
        username_found.text = "Name not found!"
    }
        
    }
    
}
