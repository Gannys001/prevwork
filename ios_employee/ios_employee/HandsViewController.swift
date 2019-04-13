//
//  HandsViewController.swift
//  ios_employee
//
//  Created by Gary H on 4/11/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class HandsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        for view in self.view.subviews as [UIView]{
            if let btn = view as? UIButton{
                if btn.accessibilityIdentifier == "nextBtn"{
                    continue
                }
                btn.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
                btn.setImage(UIImage(named:"Checkmark"), for: .selected)
                btn.alpha = 0.1
                btn.addTarget(self, action: #selector(click), for: UIControlEvents.touchUpInside)
            }
        }
        
    }

    @objc
    func click(sender: UIButton){
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
                if sender.alpha < 0.2{
                    sender.alpha = 1
                }
                else{
                    sender.alpha = 0.1
                }
            }, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
