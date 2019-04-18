//
//  TestCheckBoxViewController.swift
//  ios_employee
//
//  Created by Gary H on 3/8/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class TestCheckBoxViewController: UIViewController {

    @IBOutlet weak var btnCheckBox: UIButton!
    @IBOutlet weak var finger2: UIButton!
    @IBOutlet weak var finger3: UIButton!
    @IBOutlet weak var finger4: UIButton!
    @IBOutlet weak var finger5: UIButton!
    @IBOutlet weak var finger6: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnCheckBox.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        btnCheckBox.setImage(UIImage(named:"Checkmark"), for: .selected)
       
        finger2.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        finger2.setImage(UIImage(named:"Checkmark"), for: .selected)
        
        finger3.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        finger3.setImage(UIImage(named:"Checkmark"), for: .selected)
        finger4.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        finger4.setImage(UIImage(named:"Checkmark"), for: .selected)
        finger5.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        finger5.setImage(UIImage(named:"Checkmark"), for: .selected)
        finger6.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        finger6.setImage(UIImage(named:"Checkmark"), for: .selected)
        
        btnCheckBox.alpha = 0.1
        finger2.alpha = 0.1
        finger3.alpha = 0.1
        finger4.alpha = 0.1
        finger5.alpha = 0.1
        finger6.alpha = 0.1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func checkMarkTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
                print("---------------- Button Clicked ------------ ")
                print(self.btnCheckBox.alpha)
                if sender.alpha < 0.2{
                    print("---------- Change alpha ----------")
                    sender.alpha = 1
                }
                else{
                    sender.alpha = 0.1
                }
            }, completion: nil)
        }
    }
    
    @IBAction func checkFinger2(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
//                sender.alpha = 1
            }, completion: nil)
        }
    }
    @IBAction func checkFinger3(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
            }, completion: nil)
        }
    }
    @IBAction func checkFinger4(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
                if sender.alpha < 0.2{
                    print("---------- Change alpha ----------")
                    sender.alpha = 1
                }
                else{
                    sender.alpha = 0.1
                }
            }, completion: nil)
        }
    }
    @IBAction func checkFinger5(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
                if sender.alpha < 0.2 {
                    sender.alpha = 1
                }
                else{
                    sender.alpha = 0.1
                }
            }, completion: nil)
        }
    }
    
    @IBAction func checkFinger6(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
                if sender.alpha < 0.2 {
                    sender.alpha = 1
                }
                else{
                    sender.alpha = 0.1
                }
            }, completion: nil)
        }
    }
}
