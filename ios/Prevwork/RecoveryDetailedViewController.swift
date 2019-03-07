//
//  RecoveryDetailedViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/6/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class RecoveryDetailedViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var detailedText: UITextView!
    @IBOutlet weak var URL: UILabel!
    
    // declared the desired value
    var desiredLabelValue: String!
    var infoArray:[String] = ["Acute low back pain – Most patients with acute low back pain (less than four weeks) improve regardless of specific management. We typically suggest nonpharmacologic therapy with superficial heat and continued activity. Bed rest is not advised. \n Subacute low back pain – For patients with subacute low back pain (lasting between 4 and 12 weeks), short-term interventions such as superficial heat, massage, exercise therapy (often with physical therapy), spinal manipulation, or acupuncture are reasonable. As with patients with acute back pain, we suggest patients with subacute low back pain remain active as well."]

    
//    var string[] = ["Acute low back pain – Most patients with acute low back pain (less than four weeks) improve regardless of specific management. We typically suggest nonpharmacologic therapy with superficial heat and continued activity. Bed rest is not advised."];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = desiredLabelValue
        //label.text = desiredLabelValue;
        
        // track the desired label
        if(desiredLabelValue == "Lower Back Pain"){
            detailedText.text = infoArray[0];
        }

        // Do any additional setup after loading the view.
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
