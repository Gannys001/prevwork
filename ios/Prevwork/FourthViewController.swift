//
//  FourthViewController.swift
//  Prevwork
//
//  Created by Angela He on 2/27/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

// preventive method dview controller
class FourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let devCourses = [("BackPain"),("MusclePain"),("Headache"),("xxxx"),("xxxx")]
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Preventive Method";
        
    }
    
    // go back to section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "PreventCell") as! PreventiveMethodTableViewCell;
        
        //cell.label.text = self.devCourses[indexPath.row];
        cell.button.setTitle(self.devCourses[indexPath.row], for: .normal)
        
        return cell;
    }

    // send the title of the current story board
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "ToDetailedPage") {
            // send the detailed information
            let vc = segue.destination as! PreventDetailedViewController
            vc.desiredLabelValue = (sender as! UIButton).titleLabel!.text!
        }
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
