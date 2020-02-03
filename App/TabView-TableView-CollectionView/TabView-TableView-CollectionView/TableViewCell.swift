//
//  TableViewCell.swift
//  TabView-TableView-CollectionView
//
//  Created by Newgen Brl on 3/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var watchData: [Watch] = []
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func getData(data: Watch){
        img.image = data.img
        title.text = data.title
        price.text = String(data.price!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
