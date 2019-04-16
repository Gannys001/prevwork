//
//  ProfileViewController.swift
//  ios_employee
//
//  Created by Gary H on 2/28/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController{

    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var lName: UITextField!
    @IBOutlet weak var maleBtn: DLRadioButton!
    @IBOutlet weak var femaleBtn: DLRadioButton!
    
//    @IBOutlet weak var industryPicker: UIPickerView!
    
    
    @IBAction func checkBox1(_ sender: UIButton) {
    }
    
    @IBOutlet weak var prevOcc: UITextField!
    @IBOutlet weak var curOcc: UITextField!
    
     let  industries = ["Management, business, financial", "Computer, engineering, and science", "Education, legal, community service, arts, and media", "Healthcare practitioners and technical"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
//        industryPicker.isHidden = true
//        self.industryPicker.delegate = self
//        self.industryPicker.dataSource = self
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//    @IBAction func startEnterPrevOcc(_ sender: UITextField) {
//        industryPicker.isHidden = false
//        print("--------- Test ---------")
//    }
    
}
//
//extension ProfileViewController: UIPickerViewDelegate, UIPickerViewDataSource{
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1;
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return industries.count
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return industries[row]
//    }
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        prevOcc.text = industries[row]
//        industryPicker.isHidden = true
//    }
//}

extension UIViewController
{
    func hideKeyboard()
    {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(UIViewController.dismissKeyboard))
        
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
    
}

