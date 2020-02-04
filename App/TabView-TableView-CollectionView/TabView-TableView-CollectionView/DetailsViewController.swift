//
//  DetailsViewController.swift
//  TabView-TableView-CollectionView
//
//  Created by Newgen Brl on 3/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var data: Watch?
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titles: UILabel!
    @IBOutlet weak var desc:UILabel!
    @IBOutlet weak var price: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.image = data?.img
        titles.text = data?.title
        price.text = String((data?.price)!)
        desc.text = data?.desc
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
