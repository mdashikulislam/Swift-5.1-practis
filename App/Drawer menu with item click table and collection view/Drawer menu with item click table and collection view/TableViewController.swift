//
//  TableViewController.swift
//  Drawer menu with item click table and collection view
//
//  Created by Newgen Brl on 9/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    var dataArray: [ProceeClass] = []

    @IBOutlet weak var btnDrawermenu: UIBarButtonItem!
    @IBOutlet weak var tableViewType: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataArray = setTableData()
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
    
    func setTableData()->[ProceeClass] {
        var tempArr: [ProceeClass] = []
        let v1 = ProceeClass(image: #imageLiteral(resourceName: "watch3"), title: "Titan", price: 220.30, desc: "Watch")
        let v2 = ProceeClass(image: #imageLiteral(resourceName: "watch3"), title: "Titan", price: 220.30, desc: "Watch")
        let v3 = ProceeClass(image: #imageLiteral(resourceName: "watch3"), title: "Titan", price: 220.30, desc: "Watch")
        let v4 = ProceeClass(image: #imageLiteral(resourceName: "watch3"), title: "Titan", price: 220.30, desc: "Watch")
        let v5 = ProceeClass(image: #imageLiteral(resourceName: "watch3"), title: "Titan", price: 220.30, desc: "Watch")
        let v6 = ProceeClass(image: #imageLiteral(resourceName: "watch3"), title: "Titan", price: 220.30, desc: "Watch")
        let v7 = ProceeClass(image: #imageLiteral(resourceName: "watch3"), title: "Titan", price: 220.30, desc: "Watch")
        let v8 = ProceeClass(image: #imageLiteral(resourceName: "watch3"), title: "Titan", price: 220.30, desc: "Watch")
        
        tempArr.append(v1)
        tempArr.append(v2)
        tempArr.append(v3)
        tempArr.append(v4)
        tempArr.append(v5)
        tempArr.append(v6)
        tempArr.append(v7)
        tempArr.append(v8)
        return tempArr
    }
    
}
extension TableViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let path = dataArray[indexPath.row]
        let cell = tableViewType.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.getData(data: path)
        return cell
    }
    
    
}
