//
//  ViewController.swift
//  CICD_WorkShop
//
//  Created by Abdallah ismail on 10/07/2024.
//

import UIKit

class ViewController: UIViewController {
    let appDelgate = UIApplication.shared.delegate as! AppDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        appDelgate.parentMethod()
        print (ConfigManager.getValueFor(key: .baseURL))
    }

   
   
}

