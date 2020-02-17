//
//  CreateViewController.swift
//  Core CURD App
//
//  Created by Newgen Brl on 11/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit
import CoreData
class CreateViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var btnDrawerMenu: UIBarButtonItem!
    @IBOutlet weak var lblCreate: UILabel!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnCreate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadius()
        showDrawerMenu()
        self.hideKeyboard()
        self.txtUserName.delegate = self
        self.txtEmail.delegate = self
        self.txtFullName.delegate = self
        self.txtPassword.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }

    //Cornur Radious
    func cornerRadius(){
        lblCreate.layer.cornerRadius = 5
        btnCreate.layer.cornerRadius = 5
    }
    //Show Drawer menu
 func showDrawerMenu(){
        if revealViewController() != nil{
            btnDrawerMenu.target = revealViewController()
            btnDrawerMenu.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController()?.rearViewRevealWidth = 275
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    //Form validation Border and Label and Empty
    
    func validation(name: UITextField){
        name.layer.borderWidth = 1
        name.layer.cornerRadius = 5
        name.layer.borderColor = UIColor.red.cgColor
    }
    func successBorder(name: UITextField){
        name.layer.borderColor = UIColor.systemGreen.cgColor
    }
    
    func defaultBorder(name: UITextField){
        name.layer.borderWidth = 0
    }
    func makeFieldEmpty(name: UITextField){
        name.text = ""
    }
    
    
    @IBAction func btnCreateAction(_ sender: Any) {
        //Empty Check
        
        if txtUserName.text?.isEmpty ?? true{
           validation(name: txtUserName)
        }
        if txtEmail.text?.isEmpty ?? true {
            validation(name: txtEmail)
        }
        if txtFullName.text?.isEmpty ?? true{
           validation(name: txtFullName)
        }
        if txtPassword.text?.isEmpty ?? true {
            validation(name: txtPassword)
        }
        
        //Hide Border
        if txtUserName.text?.isEmpty != true{
            successBorder(name: txtUserName)
        }
        if txtEmail.text?.isEmpty != true {
            successBorder(name: txtEmail)
        }
        if txtFullName.text?.isEmpty != true{
            successBorder(name: txtFullName)
        }
        if txtPassword.text?.isEmpty != true {
            successBorder(name: txtPassword)
        }
        
        if txtUserName.text?.isEmpty != true && txtEmail.text?.isEmpty != true && txtFullName.text?.isEmpty != true && txtPassword.text?.isEmpty != true{
            let userName = String(txtUserName.text!)
            let fullName = String(txtFullName.text!)
            let email = String(txtEmail.text!)
            let pass = String(txtPassword.text!)
            
            create(userName: userName, fullName: fullName, email: email, pass: pass)
            
        }
        
        
    }
    
    //Create operation
    func create(userName: String,fullName:String,email:String, pass: String){
        //Setup Container
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        //Create Context from container
        
        let manageContext = appDelegate.persistentContainer.viewContext
        
        //Create Entity
        
        let userEntity = NSEntityDescription.entity(forEntityName: "User", in: manageContext)!
        
        //insert Data
        
        
        let data = NSManagedObject(entity: userEntity, insertInto: manageContext)
        data.setValue(userName, forKey: "username")
        data.setValue(fullName, forKey: "fullname")
        data.setValue(email, forKey: "email")
        data.setValue(pass, forKey: "password")
        do{
            
            try manageContext.save()
            defaultBorder(name: txtUserName)
            defaultBorder(name: txtFullName)
            defaultBorder(name: txtEmail)
            defaultBorder(name: txtPassword)
            makeFieldEmpty(name: txtUserName)
            makeFieldEmpty(name: txtFullName)
            makeFieldEmpty(name: txtEmail)
            makeFieldEmpty(name: txtPassword)
            
            AlertView.instance.showAlert(title: "Create information", message: "Information Create Successfully", alertType: .success)
            
        }catch let error as NSError{
            print("Could Not Save Data \(error), \(error.userInfo)")
            AlertView.instance.showAlert(title: "Create information", message: "Information Not Create Successfully", alertType: .failure)
        }
        
    }
    
}
