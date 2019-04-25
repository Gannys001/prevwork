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
   // @IBOutlet weak var button17: UIButton!
    @IBOutlet weak var button19: UIButton!
    @IBOutlet weak var buttonConfirm: UIButton!
    @IBOutlet weak var buttonCancel: UIButton!
    @IBOutlet weak var detailedinfo: UILabel!
    @IBOutlet weak var button16: UIButton!
    @IBOutlet weak var button17: UIButton!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button21: UIButton!
    @IBOutlet weak var button22: UIButton!
    
    @IBOutlet weak var button15: UIButton!
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
        selected = 18;
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
        selected = 17;
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
        selected = 19;
    }
    
    @IBAction func button15Selected(_ sender: Any) {
        for case let button as UIButton in self.view.subviews {
            button.isSelected = false;
        }
        button15.isSelected = true;
         buttonCancel.isHidden = false
        buttonConfirm.isHidden = false
        detailedinfo.isHidden = false
        detailedinfo.text = "You want to know more about back of head?";
        selected = 15;
    }
    
    @IBAction func button16Selected(_ sender: Any) {
        for case let button as UIButton in self.view.subviews {
            button.isSelected = false;
        }
        button16.isSelected = true;
         buttonCancel.isHidden = false
        buttonConfirm.isHidden = false
        detailedinfo.isHidden = false
        detailedinfo.text = "You want to know more about back of kape?";
        selected = 16;
    }
    
    @IBAction func button21Selected(_ sender: Any) {
        for case let button as UIButton in self.view.subviews {
            button.isSelected = false;
        }
        button21.isSelected = true;
         buttonCancel.isHidden = false
        buttonConfirm.isHidden = false
        detailedinfo.isHidden = false
        detailedinfo.text = "You want to know more about back of calves?";
        selected = 21;
    }
    @IBAction func button20Selected(_ sender: Any) {
        for case let button as UIButton in self.view.subviews {
            button.isSelected = false;
        }
        button20.isSelected = true;
         buttonCancel.isHidden = false
        buttonConfirm.isHidden = false
        detailedinfo.isHidden = false
        detailedinfo.text = "You want to know more about back of thighs?";
        selected = 20;
    }
    
    @IBAction func button22Selected(_ sender: Any) {
        for case let button as UIButton in self.view.subviews {
            button.isSelected = false;
        }
        button22.isSelected = true;
         buttonCancel.isHidden = false
        buttonConfirm.isHidden = false
        detailedinfo.isHidden = false
        detailedinfo.text = "You want to know more about back of Feet?";
        selected = 22;
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
