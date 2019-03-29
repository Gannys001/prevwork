//
//  ProfileViewController.swift
//  Prevwork
//
//  Created by 曹玥 on 2019/2/28.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var companyTextField: UILabel!
    @IBOutlet weak var usernameTextField: UILabel!
    @IBOutlet weak var industryTextField: UILabel!
    @IBOutlet weak var sizeTextField: UILabel!
    @IBOutlet weak var locationTextField: UILabel!
    @IBOutlet weak var foundedTextField: UILabel!
    
    
    
    @IBOutlet weak var profileImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        profileImage.layer.borderColor = UIColor.white.cgColor;
        profileImage.layer.borderWidth = 10;
        
        let standard = UserDefaults.standard
        
        usernameTextField.text = standard.string(forKey: "username")
        industryTextField.text = standard.string(forKey: "industry")
        sizeTextField.text = standard.string(forKey: "size")
        locationTextField.text = standard.string(forKey: "location")
        foundedTextField.text = standard.string(forKey: "founded")
        companyTextField.text = standard.string(forKey: "companyName")
        
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
