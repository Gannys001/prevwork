//
//  RevisitPart1ViewController.swift
//  ios_employee
//
//  Created by Gary H on 4/12/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class RevisitPart1ViewController: UIViewController {

    @IBOutlet weak var improved: UIButton!
    @IBOutlet weak var worse: UIButton!
    @IBOutlet weak var unchanged: UIButton!
    @IBOutlet weak var yes: UIButton!
    @IBOutlet weak var no: UIButton!
    @IBOutlet weak var desciptionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        improved.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        improved.setImage(UIImage(named:"Checkmark"), for: .selected)
        worse.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        worse.setImage(UIImage(named:"Checkmark"), for: .selected)
        unchanged.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        unchanged.setImage(UIImage(named:"Checkmark"), for: .selected)
        yes.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        yes.setImage(UIImage(named:"Checkmark"), for: .selected)
        no.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        no.setImage(UIImage(named:"Checkmark"), for: .selected)
        
        
        desciptionText.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0).cgColor
        desciptionText.layer.borderWidth = 1.0
        desciptionText.layer.cornerRadius = 5
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(FormPart1ViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        
    }

    
    @objc func viewTapped(gestureRecognizer: UIGestureRecognizer){
        view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnClicked(_ sender: UIButton) {
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
