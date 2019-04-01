//
//  BodyGraphViewController.swift
//  Prevwork
//
//  Created by Angela He on 4/1/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class BodyGraphViewController: UIViewController {
    @IBOutlet weak var button18: UIButton!
    @IBOutlet weak var button19: UIButton!
    @IBOutlet weak var buttonConfirm: UIButton!
    @IBOutlet weak var buttonCancel: UIButton!
    @IBOutlet weak var detailedinfo: UILabel!
    
    @IBOutlet weak var button17: UIButton!
    
    // select button
    var selected: Int = 0;
    
    // array of all buttons
    var allButtons: [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func button18Selected(_ sender: Any) {
        for case let button as UIButton in self.view.subviews {
            button.isSelected = false;
        }
        button18.isSelected = true;
        buttonCancel.isHidden = false
        buttonConfirm.isHidden = false
        detailedinfo.isHidden = false
        detailedinfo.text = "You want to know more about middle back?";
    }
    
    @IBAction func button17Selected(_ sender: Any) {
        for case let button as UIButton in self.view.subviews {
            button.isSelected = false;
        }
        button17.isSelected = true;
        buttonCancel.isHidden = false
        buttonConfirm.isHidden = false
        detailedinfo.isHidden = false
        detailedinfo.text = "You want to know more about upper back?";
    }
    
    @IBAction func button19Selected(_ sender: Any) {
        for case let button as UIButton in self.view.subviews {
            button.isSelected = false;
        }
        button19.isSelected = true;
        buttonCancel.isHidden = false
        buttonConfirm.isHidden = false
        detailedinfo.isHidden = false
        detailedinfo.text = "You want to know more about lower back?";
    }
    
    @IBAction func cancelClicked(_ sender: Any) {
        for case let button as UIButton in self.view.subviews {
            button.isSelected = false;
        }
        buttonCancel.isHidden = true
        buttonConfirm.isHidden = true
        detailedinfo.isHidden = true
    }
    
    @IBAction func confirmClicked(_ sender: Any) {
        // send segue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "pickerview") {
            let vc = segue.destination as! SecondViewController
            vc.desiredBodyPart = selected
        }
    }
}
