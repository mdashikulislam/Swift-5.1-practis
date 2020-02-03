//
//  Watch.swift
//  TabView-TableView-CollectionView
//
//  Created by Newgen Brl on 3/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class Watch{
    var img: UIImage?
    var title: String?
    var price: Float?
    var desc: String?
    
    init(img: UIImage, title: String, price: Float, desc: String) {
        self.img = img
        self.title = title
        self.price = price
        self.desc = desc
    }
    
}
