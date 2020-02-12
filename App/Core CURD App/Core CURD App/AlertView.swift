//
//  AlertView.swift
//  Core CURD App
//
//  Created by Newgen Brl on 12/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class AlertView: UIView {

    static let instance = AlertView()
    
    @IBOutlet weak var lblImage: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblmessage: UILabel!
    
    @IBOutlet weak var btnDone: UIButton!
    
    @IBOutlet var parentView: UIView!
    
    
    @IBOutlet weak var subView: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Fatal Error")
    }
    
    enum  AlertType {
        case success
        case failure
    }
    
    func showAlert(title:String, message: String, alertType: AlertType){
        self.lblTitle.text = title
        self.lblmessage.text = message
        
        switch alertType {
        case .success:
            lblImage.image = #imageLiteral(resourceName: "Success")
        case .failure:
            lblImage.image = #imageLiteral(resourceName: "Failure")
        }
        
        UIApplication.shared.keyWindow?.addSubview(parentView)
    }
    
    
    @IBAction func btnDone(_ sender: Any) {
        parentView.removeFromSuperview()
        
    }
    func commonInit(){
        btnDone.layer.cornerRadius = 5
        subView.layer.cornerRadius = 10
        lblImage.layer.cornerRadius = 30
        lblImage.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        lblImage.layer.borderWidth = 2
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
    
}
