//
//  ViewController.swift
//  Parse JSON
//
//  Created by Newgen Brl on 9/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

struct JsonData {
    let name: String
    let studentId: String
    let id: Int
    let dob: String
    
    init(json: [String: Any]) {
        name = json["id"] as? String ?? ""
        studentId = json["stu_id"] as? String ?? ""
        id = json["id"] as? Int ?? -1
        dob = json["dat_of_birth"] as? String ?? ""
    }
}

struct myApi {
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        otherApi()
        
    }

    func otherApi(){
        let jsonUrlString = "http://amadertiger.com/REST_API/cricket.php"
        
        guard let url = URL(string: jsonUrlString) else{return}
        
        URLSession.shared.dataTask(with: url){(data, response, err)
            in
            guard let data = data else{
              return
            }
            
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                print(json)
                
            }catch let JsonErr{
                print(JsonErr)
            }
        }.resume()
        
    }
}

