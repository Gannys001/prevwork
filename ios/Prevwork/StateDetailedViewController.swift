//
//  StateDetailedViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/7/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class StateDetailedViewController: UIViewController {

    var desiredLabelValue: String!
    
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var stateOption = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho"]
    
    @IBOutlet weak var detailedText: UITextView!
    
    let descriptionArray = ["Arizona: Ambulatory health care. \n Services Ambulatory health care services accounts for nearly 5% of Arizona's GDP, more than any other industry after real estate. Older Americans typically require more frequent health care, and like many other states with a larger than typical ambulatory health care services sector, Arizona is home to a relatively large retirement-age population. Nearly 17% of the state resident are 65 or older, a far greater share than the 15.2% of Americans nationwide","2", "3", "4","5","6","California: Computer and electronic product manufacturing. \n Computer and electronic product manufacturing includes the production of semiconductors, navigational equipment, and communications equipment. The sector differs from other manufacturing subsectors as it involves highly specialized, miniaturized, technologically advanced components. The largest industry in California after real estate, computer and electronics manufacturing also is rapidly growing. The sector contributed $99.0 billion to the state's economy in 2016, a more than 50% increase from half a decade prior."];

    override func viewDidLoad() {
        super.viewDidLoad()

        // Get the value from the previous view
        let number = Int(desiredLabelValue)
        stateLabel.text = stateOption[number!];
        detailedText.text = descriptionArray[0];
        
        // set the image of the detailed first page
        addImageToUIImageView(number: number!);
        
//
//        // Detect the links
//        detailedText.dataDetectorTypes =  UIDataDetectorTypes()
    }
    
    // set the image of the image view
    func addImageToUIImageView(number:Int){
        let yourImage: UIImage = UIImage(named: "CA")!
        imageView.image = yourImage
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

