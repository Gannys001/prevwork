//
//  ReportFilingViewController.swift
//  ios_employee
//
//  Created by Gary H on 3/8/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class ReportFilingViewController: UIViewController {

    @IBOutlet weak var homeCheckBox: UIButton!
    var prop1 = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        homeCheckBox.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        homeCheckBox.setImage(UIImage(named:"Checkmark"), for: .selected)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func checkHomeTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
            }, completion: nil)
        }
    }
    
}
