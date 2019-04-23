//
//  ProfileEditorViewController.swift
//  Prevwork
//
//  Created by 曹玥 on 2019/2/28.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class ProfileEditorViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private var datePicker: UIPickerView!
    private var industryPicker: UIPickerView!
    private var locationPicker: UIPickerView!
    private var sizePicker: UIPickerView!
    private var yearOptions: [String] = []
    private var industryOptions: [String] = [String]()
    private var locationOptions: [String] = [String]()
    private var sizeOptions: [String] = []
    
    var editTitle: String?
    
    @IBOutlet weak var editTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = editTitle
        
        let standard = UserDefaults.standard
//        birthdayTextField.text = standard.string(forKey: "founded")
//        sizeTextField.text = standard.string(forKey: "size")
//        locationTextField.text = standard.string(forKey: "location")
//        industryTextField.text = standard.string(forKey: "industry")
//        passwordTextField.text = standard.string(forKey: "password")

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ProfileEditorViewController.tapped))
        view.addGestureRecognizer(tapGesture)
        
        initialize()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(updateProfile(_:)))
        
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
            editTextField.text = yearOptions[row]
        } else if (pickerView.tag == 1){
            editTextField.text = industryOptions[row]
        } else if (pickerView.tag == 2){
            editTextField.text = locationOptions[row]
        } else{
            editTextField.text = sizeOptions[row]
        }
    }
    
    
    @IBAction func updateProfile(_ sender: Any) {
        let standard = UserDefaults.standard
        
        if (editTitle == "Company Name") {
            standard.set(editTextField.text, forKey: "companyName")
        } else if (editTitle == "Industry") {
            standard.set(editTextField.text, forKey: "industry")
        } else if (editTitle == "Company Size") {
            standard.set(editTextField.text, forKey: "size")
        } else if (editTitle == "Founded") {
            standard.set(editTextField.text, forKey: "founded")
        } else if (editTitle == "Location") {
            standard.set(editTextField.text, forKey: "location")
        }
        
       
        let params = ["username": standard.string(forKey: "username"),  "companyName": standard.string(forKey: "companyName"), "password": standard.string(forKey: "password"), "industry": standard.string(forKey: "industry"), "size": standard.string(forKey: "size"), "founded": standard.string(forKey: "founded"), "location": standard.string(forKey: "location")]
        
//        standard.set(params["username"], forKey: "username")
//        standard.set(params["password"], forKey: "password")
//        standard.set(params["companyName"], forKey: "companyName")
//        standard.set(params["industry"], forKey: "industry")
//        standard.set(params["founded"], forKey: "founded")
//        standard.set(params["location"], forKey: "location")
        
        guard let jsonData = try? JSONSerialization.data(withJSONObject: params, options: []) else { return }
        
        guard let url = URL(string: "http://127.0.0.1:3008/updateProfile") else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = jsonData
        var headers = request.allHTTPHeaderFields ?? [:]
        headers["Content-Type"] = "application/json"
        request.allHTTPHeaderFields = headers
        print("HttpBody!!!!!!")
        print(String(data: request.httpBody!, encoding: String.Encoding.utf8)!)
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        session.dataTask(with: request) { (data, res, err) in
            if let res = res as? HTTPURLResponse {
                if (res.statusCode == 404) {
                    // update failed
                    print("update failed")
                }
                
                else {
                    // update successful
                    print("update profile successful")
                    
               }
            }
        }.resume()
    
        var prevViewController: ProfileViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "profile") as! ProfileViewController
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func initialize() {
        datePicker = UIPickerView()
        datePicker.tag = 0
        for i in 1900...2020{
            yearOptions.append(String(i))
        }
        datePicker.delegate = self
        datePicker.dataSource = self
//        birthdayTextField.inputView = datePicker
        datePicker.selectRow(100, inComponent: 0, animated: true)
        
        industryPicker = UIPickerView()
        industryPicker.tag = 1
        industryOptions = ["Aerospace", "Agriculture", "Automotive", "Banking", "Chemical", "Computer Software", "Commerical", "Education", "Electronics", "Finance", "Government", "Health", "IT", "Medical", "Music", "Media", "Non-profit", "Real Estate", "Retail", "Transportation"]
        industryPicker.delegate = self
        industryPicker.dataSource = self
//        industryTextField.inputView = industryPicker
        
        
        sizePicker = UIPickerView()
        sizePicker.tag = 3
        sizeOptions = ["1 ~ 10", "10 ~ 100", "100 ~ 1000", "1000 ~ 10000", "Above 10000"]
//        sizeTextField.inputView = sizePicker
        sizePicker.delegate = self
        sizePicker.dataSource = self
        
        
        locationPicker = UIPickerView()
        locationPicker.tag = 2
        locationOptions = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]
        locationPicker.delegate = self
        locationPicker.dataSource = self
//        locationTextField.inputView = locationPicker
        
        let standard = UserDefaults.standard
        
        if (editTitle == "Company Name") {
            editTextField.text = standard.string(forKey: "companyName")
        } else if (editTitle == "Industry") {
            editTextField.inputView = industryPicker
        } else if (editTitle == "Company Size") {
            editTextField.inputView = sizePicker
        } else if (editTitle == "Location") {
            editTextField.inputView = locationPicker
        } else if (editTitle == "Founded") {
            editTextField.inputView = datePicker
        } else if (editTitle == "Username") {
            editTextField.text = standard.string(forKey: "username")
        }
    }
    
    
    
    @IBAction func deleteText(_ sender: Any) {
        editTextField.text = ""

    }
    
}
