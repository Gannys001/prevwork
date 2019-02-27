//
//  FourthViewController.swift
//  Prevwork
//
//  Created by Angela He on 2/27/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit


class FourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // table view controller
    
    var Prevents: [PreventClass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Prevents = createArray();
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Prevents.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let prevent = Prevents[indexPath.row];
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PreventCell") as! PreventiveMethodTableViewCell
        
        let prevent1 = PreventClass(title:"backpain")
        cell.setPrevent(prevent: prevent1);
        
        return cell;
    }

    
    func createArray() -> [PreventClass]{
        var tempPreventClass:[PreventClass] = []
    
        // TODO ADD IMAGE TO THE APP
        let prevent1 = PreventClass(title:"backpain")
        let prevent2 = PreventClass(title:"x1")
        let prevent3 = PreventClass(title:"x2")
        let prevent4 = PreventClass(title:"x3")
        
        tempPreventClass.append(prevent1)
        tempPreventClass.append(prevent2)
        tempPreventClass.append(prevent3)
        tempPreventClass.append(prevent4)
        
        return tempPreventClass
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
