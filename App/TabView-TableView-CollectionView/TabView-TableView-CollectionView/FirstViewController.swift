//
//  FirstViewController.swift
//  TabView-TableView-CollectionView
//
//  Created by Newgen Brl on 3/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var watchArray : [Watch] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        watchArray = setData()
        
        // Do any additional setup after loading the view.
    }
    
    func setData()->[Watch]{
        var tempArr : [Watch] = []
        let v1 = Watch(img: #imageLiteral(resourceName: "watch8"), title: "Titan", price: 25.20, desc: "asdfasfsf")
        let v2 = Watch(img: #imageLiteral(resourceName: "watch3"), title: "Titan", price: 25.20, desc: "asdfasfsf")
        let v3 = Watch(img: #imageLiteral(resourceName: "watch5"), title: "Titan", price: 25.20, desc: "asdfasfsf")
        let v4 = Watch(img: #imageLiteral(resourceName: "watch6"), title: "Titan", price: 25.20, desc: "asdfasfsf")
        let v5 = Watch(img: #imageLiteral(resourceName: "watch3"), title: "Titan", price: 25.20, desc: "asdfasfsf")
        let v6 = Watch(img: #imageLiteral(resourceName: "watch2"), title: "Titan", price: 25.20, desc: "asdfasfsf")
        let v7 = Watch(img: #imageLiteral(resourceName: "watch6"), title: "Titan", price: 25.20, desc: "asdfasfsf")
        let v8 = Watch(img: #imageLiteral(resourceName: "watch2"), title: "Titan", price: 25.20, desc: "asdfasfsf")
        
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

extension FirstViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return watchArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let path = watchArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        cell.getData(data: path)
        return cell
        
    }
    
    
}
