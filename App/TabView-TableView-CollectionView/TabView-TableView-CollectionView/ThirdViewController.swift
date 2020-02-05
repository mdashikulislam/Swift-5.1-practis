//
//  ThirdViewController.swift
//  TabView-TableView-CollectionView
//
//  Created by Newgen Brl on 5/2/20.
//  Copyright © 2020 Newgen Brl. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBAction func btnSuccess(_ sender: Any) {
        AlertDialog.instance.showAlert(titles: "Success", messages: "My Message", alertType: .success)
    }
    @IBAction func btnFailure(_ sender: Any) {
        AlertDialog.instance.showAlert(titles: "Failure", messages: "My Message", alertType: .failure)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
