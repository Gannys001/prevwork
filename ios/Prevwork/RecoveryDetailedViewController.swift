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
    @IBOutlet weak var RecoveryTime: UITextView!
    
    // declared the desired value
    var desiredLabelValue: String!
    var infoArray:[String] = ["-- nonpharmacologic therapy with superficial heat and continued activity. \n --superficial heat, massage, exercise therapy (often with physical therapy), spinal manipulation, or acupuncture are reasonable. \n --Bed rest is not advised.","-- Rest.\n -- Stop any physical activity that causes pain, and keep your foot still when possible.\n -- Ice your foot for 20 minutes 2 to 3 times a day.\n -- DO NOT apply ice directly to your skin. \n"]

    var imageArray:[String] = ["walk-icon.jpg", "aero.png", "yoga.png" , "relax.png"]
    
    @IBOutlet weak var clickMe: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = desiredLabelValue
        
        // track the desired label
        if(desiredLabelValue == "Lower Back Pain"){
            RecoveryTime.text = "4 weeks";
            detailedText.text = infoArray[0];
            var imageName = imageArray[0]
            var image = UIImage(named: imageName)
            RecoveryImage1.image = image
            imageName = imageArray[2]
            image = UIImage(named: imageName)
            RecoveryImage2.image = image
        }
        if(desiredLabelValue == "Sprains"){
            RecoveryTime.text = "2-4 weeks"
            detailedText.text = infoArray[1];
            var imageName = imageArray[3]
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
