//
//  ProfileEditorViewController.swift
//  Prevwork
//
//  Created by 曹玥 on 2019/2/28.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class ProfileEditorViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var birthdayTextField: UITextField!

    @IBOutlet weak var jobTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    private var datePicker: UIDatePicker!
    private var genderPicker: UIPickerView!
    private var jobPicker: UIPickerView!
    private var genderOptions: [String] = [String]()
    private var jobOptions: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(ProfileEditorViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ProfileEditorViewController.tapped))
        view.addGestureRecognizer(tapGesture)
        
        birthdayTextField.inputView = datePicker
        
        genderPicker = UIPickerView()
        genderPicker.tag = 1
        genderOptions = ["Male", "Female"]
        genderPicker.delegate = self
        genderPicker.dataSource = self
        
        genderTextField.inputView = genderPicker
        
        jobPicker = UIPickerView()
        jobPicker.tag = 2
        jobOptions = ["Management, business, financial", "Computer, engineering, and science", "Construction"]
        jobPicker.delegate = self
        jobPicker.dataSource = self
        jobTextField.inputView = jobPicker
        
        
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/DD/YYYY"
        birthdayTextField.text = dateFormatter.string(from: datePicker.date)
    }
    
    @objc func tapped(){
        view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView.tag == 1) {return genderOptions.count}
        else {return jobOptions.count}
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView.tag == 1) {
            return genderOptions[row]
        } else{
            return jobOptions[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView.tag == 1){
            genderTextField.text = genderOptions[row]
        } else{
            jobTextField.text = jobOptions[row]
        }
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
