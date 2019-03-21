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
    @IBOutlet weak var sizeTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var industryTextField: UITextField!
    
    
    private var datePicker: UIPickerView!
    private var industryPicker: UIPickerView!
    private var locationPicker: UIPickerView!
    private var sizePicker: UIPickerView!
    private var yearOptions: [String] = []
    private var industryOptions: [String] = [String]()
    private var locationOptions: [String] = [String]()
    private var sizeOptions: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
//        datePicker = UIDatePicker()
//        datePicker.datePickerMode = .date
//        datePicker.addTarget(self, action: #selector(ProfileEditorViewController.dateChanged(datePicker:)), for: .valueChanged)
//
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ProfileEditorViewController.tapped))
        view.addGestureRecognizer(tapGesture)
        
//        birthdayTextField.inputView = datePicker
        
        datePicker = UIPickerView()
        datePicker.tag = 0
        for i in 1900...2020{
            yearOptions.append(String(i))
        }
        datePicker.delegate = self
        datePicker.dataSource = self
        birthdayTextField.inputView = datePicker
        datePicker.selectRow(100, inComponent: 0, animated: true)

        
        
        industryPicker = UIPickerView()
        industryPicker.tag = 1
        industryOptions = ["Aerospace", "Agriculture", "Automotive", "Banking", "Chemical", "Computer Software", "Commerical", "Education", "Electronics", "Finance", "Government", "Health", "IT", "Medical", "Music", "Media", "Non-profit", "Real Estate", "Retail", "Transportation"]
        industryPicker.delegate = self
        industryPicker.dataSource = self
        industryTextField.inputView = industryPicker
        
        
        sizePicker = UIPickerView()
        sizePicker.tag = 3
        sizeOptions = ["1 ~ 10", "10 ~ 100", "100 ~ 1000", "1000 ~ 10000", "Above 10000"]
        sizeTextField.inputView = sizePicker
        sizePicker.delegate = self
        sizePicker.dataSource = self
        
        
        locationPicker = UIPickerView()
        locationPicker.tag = 2
        locationOptions = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]
        locationPicker.delegate = self
        locationPicker.dataSource = self
        locationTextField.inputView = locationPicker
        
        
    }
    
//    @objc func dateChanged(datePicker: UIDatePicker) {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "MM/DD/YYYY"
//        birthdayTextField.text = dateFormatter.string(from: datePicker.date)
//    }
    
    @objc func tapped(){
        view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView.tag == 0) {return yearOptions.count}
        else if (pickerView.tag == 1) {return industryOptions.count}
        else if (pickerView.tag == 2){return locationOptions.count}
        else{
            return sizeOptions.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView.tag == 0){
            return yearOptions[row]
        } else if (pickerView.tag == 1) {
            return industryOptions[row]
        } else if (pickerView.tag == 2){
            return locationOptions[row]
        } else{
            return sizeOptions[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView.tag == 0){
            birthdayTextField.text = yearOptions[row]
        } else if (pickerView.tag == 1){
            industryTextField.text = industryOptions[row]
        } else if (pickerView.tag == 2){
            locationTextField.text = locationOptions[row]
        } else{
            sizeTextField.text = sizeOptions[row]
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
