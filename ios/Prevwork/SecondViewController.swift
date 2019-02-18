//
//  SecondViewController.swift
//  Prevwork
//
//  Created by Angela He on 2/18/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var SexTex: UITextField!
    @IBOutlet weak var AgeTex: UITextField!
    @IBOutlet weak var OccupTex: UITextField!
    @IBOutlet weak var SexPick: UIPickerView!
    @IBOutlet weak var AgePick: UIPickerView!
    @IBOutlet weak var OccupPick: UIPickerView!
    
    var age = ["10-20", "20-30", "30-40"];
    var sex = ["Male", "Female"];
    // var occupation = ....
    
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
       
        // TODO ! The following is for occupation
//        if(pickerView == AgePick){
//            self.AgeTex.text = self.age[row];
//            self.AgePick.isHidden = true;
//        }
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if(textField == self.SexTex){
            self.SexPick.isHidden = false;
        }
        else if(textField == self.AgeTex){
            self.AgePick.isHidden = false;
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

