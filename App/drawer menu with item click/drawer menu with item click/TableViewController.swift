//
//  TableViewController.swift
//  drawer menu with item click
//
//  Created by Newgen Brl on 6/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import Foundation
import UIKit


class TableViewController : UITableViewController{
    
    @IBOutlet var tableViewItem: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        debugPrint(indexPath.row)
       
        let redriect = storyboard?.instantiateViewController(identifier: "Notification") as! NotificationSettingViewController
        
        
        self.navigationController?.pushViewController(redriect, animated: true)
        
    }
   
}
