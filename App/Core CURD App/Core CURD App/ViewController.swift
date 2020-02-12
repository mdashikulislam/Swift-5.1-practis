//
//  ViewController.swift
//  Core CURD App
//
//  Created by Newgen Brl on 11/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
     
    @IBOutlet weak var btnDrawerMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        showDrawerMenu()
        
        // Do any additional setup after loading the view.
    }
    
   func showDrawerMenu(){
        if revealViewController() != nil{
            btnDrawerMenu.target = revealViewController()
            btnDrawerMenu.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController()?.rearViewRevealWidth = 275
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    
    
}

