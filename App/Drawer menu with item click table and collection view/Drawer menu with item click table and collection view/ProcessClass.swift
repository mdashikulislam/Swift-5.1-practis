//
//  ProcessClass.swift
//  Drawer menu with item click table and collection view
//
//  Created by Newgen Brl on 9/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import Foundation
import UIKit

class ProceeClass{
    
    var image: UIImage!
    var title: String!
    var price: Float!
    var desc: String!
    
    init(image: UIImage, title: String, price: Float, desc: String) {
        self.image = image
        self.title = title
        self.price = price
        self.desc = desc
    }
    
}
