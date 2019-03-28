//
//  PopUpViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/27/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var silverButton: UIButton!
    @IBOutlet weak var goldButton: UIButton!
    @IBOutlet weak var platinumButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        // remove itself from superview
        self.view.removeFromSuperview()
    }
    
    @IBAction func goldChose(_ sender: Any) {
        platinumButton.isSelected = false;
        silverButton.isSelected = false;
        goldButton.isSelected = true;
    }
    
    @IBAction func platinumChose(_ sender: Any) {
        platinumButton.isSelected = true;
        silverButton.isSelected = false;
        goldButton.isSelected = false;
    }
    
    @IBAction func silverChose(_ sender: Any) {
        silverButton.isSelected = true;
        platinumButton.isSelected = false;
        goldButton.isSelected = false;
    }
    
    @IBAction func purchase(_ sender: Any) {
        // check which button is selected
        if(silverButton.isSelected){
            // do something
        } else if(platinumButton.isSelected){
            // do something
        } else if(goldButton.isSelected){
            // do something
        }
        self.view.removeFromSuperview()
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
