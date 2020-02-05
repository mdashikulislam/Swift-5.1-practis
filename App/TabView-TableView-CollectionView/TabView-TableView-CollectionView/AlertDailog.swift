//
//  AlertDailog.swift
//  TabView-TableView-CollectionView
//
//  Created by Newgen Brl on 5/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import Foundation
import UIKit

class AlertDialog: UIView{
    static let instance = AlertDialog()
    
    
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var btnDone: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("AlertDialog", owner: self, options: nil)
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("This Is something Wrong")
    }
    
    private func commonInit(){
        btnDone.layer.cornerRadius = 5
        alertView.layer.cornerRadius = 10
        image.layer.cornerRadius = 30
        image.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        image.layer.borderWidth = 2
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
    }
    
    enum AlertType{
        case success
        case failure
    }
    
    func showAlert(titles: String, messages: String, alertType: AlertType){
        self.title.text = titles
        self.message.text = messages
        
        switch alertType {
        case .success:
            image.image = #imageLiteral(resourceName: "Success")
            btnDone.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0.6980392157, blue: 0.2196078431, alpha: 1)
            btnDone.tag = 1
        case .failure:
            image.image = #imageLiteral(resourceName: "Failure")
            btnDone.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            btnDone.tag = 2
        }
        
        UIApplication.shared.keyWindow?.addSubview(parentView)
    }
    
    
    @IBAction func btnDone(_ sender: Any) {
        parentView.removeFromSuperview()
    }
    
    
}
