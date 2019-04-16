//
//  FormPart2ViewController.swift
//  ios_employee
//
//  Created by Gary H on 4/11/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class FormPart2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(FormPart1ViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        
        // Do any additional setup after loading the view.
    }

    
    @objc func viewTapped(gestureRecognizer: UIGestureRecognizer){
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
