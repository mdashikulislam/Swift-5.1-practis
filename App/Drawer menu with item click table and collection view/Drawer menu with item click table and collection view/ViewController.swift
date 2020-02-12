//
//  ViewController.swift
//  Drawer menu with item click table and collection view
//
//  Created by Newgen Brl on 9/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnDrawermenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        showDrawerMenu()
        // Do any additional setup after loading the view.
    }

    func showDrawerMenu(){
        if revealViewController() != nil {
            btnDrawermenu.target = revealViewController()
            btnDrawermenu.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController()?.rearViewRevealWidth = 275
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        
    }
    //unwind segue
    @IBAction func unwindtoHome (_ sender: UIStoryboardSegue){}
}

