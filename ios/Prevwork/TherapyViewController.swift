//
//  TherapyViewController.swift
//  Prevwork
//
//  Created by 曹玥 on 2019/4/4.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit



class TherapyViewController: UIViewController {

    @IBOutlet weak var controller: UISegmentedControl!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var information: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func indexChanged(_ sender: Any) {
        switch controller.selectedSegmentIndex {
        case 0:
            let newImage  = UIImage(named: "acupuncture")
            image.image = newImage
            information.text = "Acupuncture is one of the oldest, most commonly used alternative or ‘complimentary medical’ procedures in the world. Originating in China more than 2,000 years ago, acupuncture became widely known in the United States in the 1970s. Studies have documented acupuncture's effects, but they have not been able to fully explain how acupuncture works."
        case 1:
            let newImage = UIImage(named: "chiropractic")
            image.image = newImage
            information.text = "Chiropractic is a branch of the healing arts based on the understanding that good health depends, in part, upon a normally functioning nervous system. The spinal column is a key structure in the nervous system as it contains the spinal cord and nerve roots that branch out into the entire body. Chiropractors do not prescribe drugs or perform surgery. Chiropractic treatment involves adjusting the spine to correct vertebral misalignment and imbalance."
        default:
            let newImage = UIImage(named: "physical-therapy")
            image.image = newImage
            information.text = "The treating doctor prescribes PT to treat sprains/strains, muscles spasms, arthritis, and many other back disorders. It is an important component of treatment following spine surgery. The purpose of PT is to help the patient build strength, flexibility, and endurance. PT combines heat/cold therapy, ultrasound, electrical stimulating, and massage with exercise as part of rehabilitation."
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
