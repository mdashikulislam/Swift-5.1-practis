//
//  TableViewCell.swift
//  Drawer menu with item click table and collection view
//
//  Created by Newgen Brl on 9/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func getData(data: ProceeClass){
        images.image = data.image
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
