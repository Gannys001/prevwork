//
//  PreventDetailedViewController.swift
//  Prevwork
//
//  Created by Angela He on 2/28/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class PreventDetailedViewController: UIViewController {
    
    // the desired label value of the label
    var desiredLabelValue: String!
    @IBOutlet weak var titleLabel: UILabel!

    
    @IBOutlet weak var picRight: UIImageView!

    @IBOutlet weak var picWrong: UIImageView!

//
    @IBOutlet weak var wrongErgo: UITextView!
    @IBOutlet weak var rightErgo: UITextView!
    
    // The first info array
    var infoArray:[String] = ["Exercise may prevent episodes of LBP. When exercise was combined with education, it is proved to be more efficient.","Forearm support reduces shoulder and elbow loads and a moderate level of evidence suggests that forearm supports can reduce the risk of developing neck and back injuries. ","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13"]
    
    // The second info array
    var infoArray2:[String] = ["Exercise may prevent episodes of LBP. When exercise was combined with education, it is proved to be more efficient.","Providing a large forearm support combined with ergonomic training is an effective intervention to prevent upper body musculoskeletal discomfort/injury. ","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13"]

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = desiredLabelValue
         //switch desired label value
        if(desiredLabelValue == "BackPain"){
            // add the text to the text box
            wrongErgo.text = infoArray[0];
            picWrong.image = UIImage(named:"wrongwaysitting")
            picRight.image = UIImage(named:"rightwaysitting")
            rightErgo.text = infoArray2[0];
        }
        if(desiredLabelValue == "Arm"){
            // add the text to the text box
            wrongErgo.text = infoArray[1];
            picWrong.image = UIImage(named:"forearmright")
            picRight.image = UIImage(named:"forearmwrong")
            rightErgo.text = infoArray2[1];
        }
       
    }
    
    
}
