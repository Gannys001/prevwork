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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = desiredLabelValue
        
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
