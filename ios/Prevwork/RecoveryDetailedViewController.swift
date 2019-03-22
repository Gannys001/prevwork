//
//  RecoveryDetailedViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/6/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class RecoveryDetailedViewController: UIViewController{

    @IBOutlet weak var RecoveryImage1: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var detailedText: UITextView!
    @IBOutlet weak var RecoveryImage2: UIImageView!
    @IBOutlet weak var URL: UILabel!
    
    // declared the desired value
    var desiredLabelValue: String!
    var infoArray:[String] = ["Acute low back pain \n – Most patients with acute low back pain (less than four weeks) improve regardless of specific management. We typically suggest nonpharmacologic therapy with superficial heat and continued activity. Bed rest is not advised. \n Subacute low back pain – For patients with subacute low back pain (lasting between 4 and 12 weeks), short-term interventions such as superficial heat, massage, exercise therapy (often with physical therapy), spinal manipulation, or acupuncture are reasonable. As with patients with acute back pain, we suggest patients with subacute low back pain remain active as well."]

    var imageArray:[String] = ["walk-icon.jpg", "aero.png", "yoga.png"]
    
    @IBOutlet weak var clickMe: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = desiredLabelValue
        
        // track the desired label
        if(desiredLabelValue == "Lower Back Pain"){
            detailedText.text = infoArray[0];
            
            var imageName = imageArray[0]
            var image = UIImage(named: imageName)
            RecoveryImage1.image = image
            imageName = imageArray[2]
            image = UIImage(named: imageName)
            RecoveryImage2.image = image
        }
        
    }
    
    // Open External Link
    @IBAction func gotoOsaaha(_ sender: Any) {
        // open the external link
        if let url = NSURL(string: "https://prevworks.com/"){
            UIApplication.shared.openURL(url as URL)
        }
    }
}
