//
//  ThirdShowViewController.swift
//  TabView-TableView-CollectionView
//
//  Created by Newgen Brl on 5/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class ThirdShowViewController: UIViewController {
    var message: String?
    
    
    @IBOutlet weak var lblMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.lblMessage.text = message
        
        // Do any additional setup after loading the view.
    }
    


}
