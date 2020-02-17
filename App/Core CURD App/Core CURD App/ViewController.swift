//
//  ViewController.swift
//  Core CURD App
//
//  Created by Newgen Brl on 11/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {
     
    @IBOutlet weak var btnDrawerMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        showDrawerMenu()
        self.hideKeyboard()
        readData()
        // Do any additional setup after loading the view.
    }
    
   func showDrawerMenu(){
        if revealViewController() != nil{
            btnDrawerMenu.target = revealViewController()
            btnDrawerMenu.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController()?.rearViewRevealWidth = 275
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    func readData(){
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        
        
        let manageContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        
        do{
            print("aashik")
            
            let result = try manageContext.fetch(fetchRequest)
            print("\(result)")
           /* for data in result as! [NSManagedObject] {
                debugPrint(data.value(forKey: "email") as! String)
                
                

            }*/
        }catch let error as NSError{
            print("Error is \(error), \(error.userInfo)")
            
        }
    }
    
}

extension UIViewController{
    func hideKeyboard(){
        
        let tap : UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
       
    }
    @objc func dismissKeyboard(){
               view.endEditing(true)
        
    }
}

