//
//  PurchasePackageViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/27/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class PurchasePackageViewController: UIViewController {

    @IBOutlet weak var packageTitle: UILabel!
    
    @IBOutlet weak var physicalLabel: UILabel!
    @IBOutlet weak var chiropracticLabel: UILabel!
    @IBOutlet weak var acupunctureLabel: UILabel!
    @IBAction func purchasePackage(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "pop") as! PopUpViewController
        self.addChild(popOverVC)
        // add the pop over view controller as the child view controller of the parent view controller
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        print("Purchase Package View Appears")
        reloadTitle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        reloadTitle()
        NotificationCenter.default.addObserver(self, selector: #selector(reloadTitle), name: Notification.Name("purchaseNotification"), object: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func reloadTitle() {
        let standard = UserDefaults.standard

        if (standard.object(forKey: "package") == nil || standard.string(forKey: "package") == "None") {
            packageTitle.text = "Your don't have any purchased package!"
            physicalLabel.isHidden = true
            chiropracticLabel.isHidden = true
            acupunctureLabel.isHidden = true
        } else if (standard.string(forKey: "package") == "gold") {
            packageTitle.text = "You have purchased the gold package"
            physicalLabel.isHidden = false
            chiropracticLabel.isHidden = false
            acupunctureLabel.isHidden = false
        } else if (standard.string(forKey: "package") == "silver") {
            packageTitle.text = "You have purchased the silver package"
            physicalLabel.isHidden = false
            chiropracticLabel.isHidden = false
            acupunctureLabel.isHidden = true
        } else if (standard.string(forKey: "package") == "platinum") {
            packageTitle.text = "You have purchased the platinum package"
            physicalLabel.isHidden = false
            chiropracticLabel.isHidden = true
            acupunctureLabel.isHidden = true
        }
    }

}
