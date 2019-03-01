//
//  ProfileViewController.swift
//  ios_employee
//
//  Created by Gary H on 2/28/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var lName: UITextField!
    @IBOutlet weak var maleBtn: DLRadioButton!
    @IBOutlet weak var femaleBtn: DLRadioButton!
    
    @IBOutlet weak var industryPicker: UIPickerView!
    
    @IBOutlet weak var prevOcc: UITextField!
    @IBOutlet weak var curOcc: UITextField!
    
    
    var industries = ["Management, business, financial", "Computer, engineering, and science", "Education, legal, community service, arts, and media", "Healthcare practitioners and technical"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.hideKeyboard()
        industryPicker.isHidden = true;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /* funtions for picker view*/
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int{
        return industries.count
    }
    
    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String! {
        return industries[row]
    }
    
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        prevOcc.text = industries[row]
        industryPicker.isHidden = true;
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        industryPicker.isHidden = false
        return false
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
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
