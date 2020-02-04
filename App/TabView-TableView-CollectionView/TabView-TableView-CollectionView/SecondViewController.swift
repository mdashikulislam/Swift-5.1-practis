//
//  SecondViewController.swift
//  TabView-TableView-CollectionView
//
//  Created by Newgen Brl on 3/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var fruit: [Watch] = []
    
    @IBOutlet weak var collectionViewShow: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fruit = setFruitData()
        
        let layout = self.collectionViewShow.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.minimumInteritemSpacing = 5
        layout.itemSize = CGSize(width: (self.collectionViewShow.frame.size.width - 20)/2, height: (self.collectionViewShow.frame.size.height)/3)
        // Do any additional setup after loading the view.
    }

    func setFruitData()-> [Watch]{
        var tempArr : [Watch] = []
        
        let v1 = Watch(img: #imageLiteral(resourceName: "img7"), title: "Orange", price: 230.5, desc: "Orange")
        let v2 = Watch(img: #imageLiteral(resourceName: "img5"), title: "Orange", price: 230.5, desc: "Orange")
        let v3 = Watch(img: #imageLiteral(resourceName: "img8"), title: "Orange", price: 230.5, desc: "Orange")
        let v4 = Watch(img: #imageLiteral(resourceName: "img3"), title: "Orange", price: 230.5, desc: "Orange")
        let v5 = Watch(img: #imageLiteral(resourceName: "img4"), title: "Orange", price: 230.5, desc: "Orange")
        let v6 = Watch(img: #imageLiteral(resourceName: "img6"), title: "Orange", price: 230.5, desc: "Orange")
        let v7 = Watch(img: #imageLiteral(resourceName: "img1"), title: "Orange", price: 230.5, desc: "Orange")
        let v8 = Watch(img: #imageLiteral(resourceName: "img2"), title: "Orange", price: 230.5, desc: "Orange")
        
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

extension SecondViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruit.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let path = fruit[indexPath.item]
        let cell = collectionViewShow.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
        cell.getFruitData(data: path)
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionViewShow.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 2
        cell?.layer.borderColor = UIColor.red.cgColor
        
        let direction = storyboard?.instantiateViewController(identifier: "ViewDetails") as! DetailsViewController;
        
        direction.data = fruit[indexPath.item]
        self.navigationController?.pushViewController(direction, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionViewShow.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 1
        cell?.layer.borderColor = UIColor.gray.cgColor
    }
}
