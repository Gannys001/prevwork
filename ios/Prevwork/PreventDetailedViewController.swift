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
    
    @IBOutlet weak var TextBox: UITextView!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var infoArray:[String] = ["Exercise may prevent episodes of LBP. When exercise was combined with education, it is proved to be more efficient.","card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13"]

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = desiredLabelValue
        // switch desired label value
        if(desiredLabelValue == "Back Pain"){
            // add the text to the text box
            TextBox.text = infoArray[0];
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
