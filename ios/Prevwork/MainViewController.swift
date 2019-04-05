//
//  MainViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/7/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    private var stateOption: [String] = [String]()
    
    var lastSelected:String!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stateOption.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stateOption[row]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        stateOption = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID"]
        
        let standard = UserDefaults.standard
        if (standard.object(forKey: "loggedin") == nil || standard.bool(forKey: "loggedin") == false) {
            self.performSegue(withIdentifier: "showSignin", sender: self)
        }
    }

    //send the title of the current story board
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "ToStateDetailed") {
            // send the detailed information
            let vc = segue.destination as!
            StateDetailedViewController
//            vc.desiredLabelValue = "here"
            vc.desiredLabelValue =  statePicker.selectedRow(inComponent: 0).description
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

