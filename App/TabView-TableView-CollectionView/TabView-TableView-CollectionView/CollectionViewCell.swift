//
//  CollectionViewCell.swift
//  TabView-TableView-CollectionView
//
//  Created by Newgen Brl on 4/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    var fruitData: [Watch] = []
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var tilte: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func getFruitData(data: Watch){
        img.image = data.img
        tilte.text = data.title
        price.text = String(data.price!)
    }
    
}
