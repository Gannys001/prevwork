//
//  InjuryDescriptionViewController.swift
//  ios_employee
//
//  Created by Gary H on 4/12/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class InjuryDescriptionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
}
