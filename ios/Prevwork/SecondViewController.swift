//
//  SecondViewController.swift
//  Prevwork
//
//  Created by Angela He on 2/18/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var bodyPart: UILabel!
    @IBOutlet weak var SexTex: UITextField!
    @IBOutlet weak var AgeTex: UITextField!
    @IBOutlet weak var OccupTex: UITextField!
    @IBOutlet weak var SexPick: UIPickerView!
    @IBOutlet weak var AgePick: UIPickerView!
    @IBOutlet weak var OccupPick: UIPickerView!
    
    var age = [("Under 14"),("14 to 15"),("16 to 19"),("20 to 24"),("25 to 34"),("35 to 44"),("45 to 54"),("55 to 64"), ("65 and over")]
    var sex = ["Male", "Female"];
    var occupation = [("Goods producing industries"), ("Natural resources and mining"),("Agriculture, forestry, fishing and hunting"), (" Mining,Construction"),("Manufacturing"),("Service providing industries"),(" Trade, Transportation and utilities"),("Wholesale trade"),("Retail trade"),(" Transportation and warehousing"),( "Utilities"),("Information"),("Financial activities"),("Finance and insurance"),(" Real estate and rental and leasing"),("Professional and business services"),(" Professional, scientific, and technical services"),(" Management of companies and enterprises"),
        (" Administrative and support and waste management and remediation services"),(" Education and health services"),(" Educational services"),(" Health care and social assistance"),(" Leisure and hospitality"),(" Arts, entertainment, and recreation"),(" Accommodation and food services"),
        (" Other services"),(" Other services, except public administration"),(" Public administration")]
    var desiredBodyPart: Int!
    var desiredBodyPartArray = ["Face", "Neck", "Thyroid", "Left Breast", "Right Breast", "Spleen", "Liver", "Stomach", "Abdomen", "Pelvis", "Genitals","Thighs","Legs", "Arms", "Feet", "Arms", "Back of Head", "Nape", "Upper Back", "Middle Back",
    "Lower Back", "Back of thighs", "calves", "feet"];
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    // how many rows to display
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countRow: Int = 1;
        if(pickerView == SexPick){
            countRow = self.sex.count;
        }
        
        if(pickerView == AgePick){
            countRow = self.age.count;
        }
        
        if(pickerView == OccupPick){
            countRow = self.occupation.count;
        }
        
        return countRow;
    }
    
    // which one to select
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(pickerView == AgePick){
            let titleRow = age[row];
            return titleRow;
        }
        else if(pickerView == SexPick){
            let titleRow = sex[row];
            return titleRow;
        }
        else if(pickerView == OccupPick){
            let titleRow = occupation[row];
            return titleRow;
        }
        return " ";
    }

    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView == SexPick){
            self.SexTex.text = self.sex[row];
            self.SexPick.isHidden = true;
        }
        if(pickerView == AgePick){
            self.AgeTex.text = self.age[row];
            self.AgePick.isHidden = true;
        }
        if(pickerView == OccupPick){
            self.OccupTex.text = self.occupation[row];
            self.OccupPick.isHidden = true;
        }
    
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if(textField == self.SexTex){
            self.SexPick.isHidden = false;
        }
        else if(textField == self.AgeTex){
            self.AgePick.isHidden = false;
        }
        else if(textField == self.OccupTex){
            self.OccupPick.isHidden = false;
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hide the key board when tapping around
        self.hideKeyboardWhenTappedAround()
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let vc = segue.destination as! RiskResultViewController
        
        print([SexPick.selectedRow(inComponent: 0)])
        if(sex[SexPick.selectedRow(inComponent: 0)] == "Male"){
            vc.gender = 0;
        } else{
            vc.gender = 1;
        }
        
        vc.industry = OccupPick.selectedRow(inComponent: 0);
        vc.age = AgePick.selectedRow(inComponent: 0);
    }
}

