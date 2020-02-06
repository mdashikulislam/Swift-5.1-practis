//
//  ViewController.swift
//  drawer menu with item click
//
//  Created by Newgen Brl on 6/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        showDrawerMenu()
        
        // Do any additional setup after loading the view.
    }

    func showDrawerMenu(){
        if revealViewController() != nil {
            btnMenu.target = revealViewController()
            btnMenu.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController()?.rearViewRevealWidth = 275
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
}

