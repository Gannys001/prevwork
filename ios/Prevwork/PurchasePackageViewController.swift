//
//  PurchasePackageViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/27/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class PurchasePackageViewController: UIViewController {

    @IBAction func purchasePackage(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "pop") as! PopUpViewController
        self.addChild(popOverVC)
        // add the pop over view controller as the child view controller of the parent view controller
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
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
