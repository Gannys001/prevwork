//
//  StateDetailedViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/7/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class StateDetailedViewController: UIViewController {

    var desiredLabelValue: String!
    
    @IBOutlet weak var stateLabel: UILabel!
    
    
    var stateOption = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID"]
    
    @IBOutlet weak var detailedText: UITextView!
    
    let descriptionArray = ["California: Computer and electronic product manufacturing. \n Computer and electronic product manufacturing includes the production of semiconductors, navigational equipment, and communications equipment. The sector differs from other manufacturing subsectors as it involves highly specialized, miniaturized, technologically advanced components. The largest industry in California after real estate, computer and electronics manufacturing also is rapidly growing. The sector contributed $99.0 billion to the state's economy in 2016, a more than 50% increase from half a decade prior."];

    override func viewDidLoad() {
        super.viewDidLoad()

        // Get the value from the previous view
        let number = Int(desiredLabelValue)
        stateLabel.text = stateOption[number!];
        detailedText.text = descriptionArray[0];
//
//        // Detect the links
//        detailedText.dataDetectorTypes =  UIDataDetectorTypes()
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

