//
//  ViewController.swift
//  drawer menu
//
//  Created by Newgen Brl on 6/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menubtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        drawermenu()
        
        // Do any additional setup after loading the view.
    }

    func drawermenu(){
        
        if revealViewController() != nil {
            menubtn.target = revealViewController()
            menubtn.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController()?.rearViewRevealWidth = 275
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        
    }

}

