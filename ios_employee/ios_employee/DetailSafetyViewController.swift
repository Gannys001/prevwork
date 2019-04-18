//
//  DetailSafetyViewController.swift
//  ios_employee
//
//  Created by Braelyn Chen on 3/22/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class DetailSafetyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var topic = ""
    
    var generalImageArray = [UIImage(named: "precautions"), UIImage(named: "teameffort"), UIImage(named: "climbing"), UIImage(named: "tools"), UIImage(named: "fire"), UIImage(named: "gearup")]
    var generalTitleArray = [" General Precautions", " Safety Is A Team Effort", " Lifting And Climbing Safety", " Tools And Machinery Safety", " Beware Of Fire Hazards", " Gearing Up For Safety" ]
    var healthImageArray = [UIImage(named: "diet"), UIImage(named: "fatigue"), UIImage(named: "healthtips")]
    var healthTitleArray = [" Healthy Workplace Dieting", " Overcoming Workplace Fatigue", " Other Employee Health Tips"]
    var orientationImageArray = [UIImage(named: "housekeeping"), UIImage(named: "lifting"), UIImage(named: "powertool"), UIImage(named: "ppe")]
    var orientationTitleArray = [" Safety Housekeeping Tips", " Safe Lifting And Carrying", " Hand And Power Tool Safety", " Personal Protective  Equipment Safety"]
    var meetingImageArray = [UIImage(named: "beforemeeting"), UIImage(named: "duringmeeting")]
    var meetingTitleArray = [" Before You Begin The Meeting", " Begin The Meeting"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch topic {
        case "General Workplace Safety":
            return generalImageArray.count
        case "Employee Health Tips":
            return healthImageArray.count
        case "Safety Orientation Tips":
            return orientationImageArray.count
        case "Safety Meeting Tips":
            return meetingImageArray.count
        default:
            print("no topic matches")
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailSafetyCollectionViewCell", for: indexPath) as! DetailSafetyCollectionViewCell
        switch topic {
        case "General Workplace Safety":
            cell.DetailSafetyImage.image = generalImageArray[indexPath.row]
            cell.DetailSafetyLabel.text = generalTitleArray[indexPath.row]
        case "Employee Health Tips":
            cell.DetailSafetyImage.image = healthImageArray[indexPath.row]
            cell.DetailSafetyLabel.text = healthTitleArray[indexPath.row]
        case "Safety Orientation Tips":
            cell.DetailSafetyImage.image = orientationImageArray[indexPath.row]
            cell.DetailSafetyLabel.text = orientationTitleArray[indexPath.row]
        case "Safety Meeting Tips":
            cell.DetailSafetyImage.image = meetingImageArray[indexPath.row]
            cell.DetailSafetyLabel.text = meetingTitleArray[indexPath.row]
        default:
            print("no topic matches")
        }
        cell.contentView.backgroundColor = .white
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.layer.masksToBounds = true
        
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOpacity = 0.6
        cell.layer.shadowOffset = CGSize(width: 0, height: 0)
        cell.layer.shadowRadius = cell.contentView.layer.cornerRadius
        
        //        cell.contentView.layer.cornerRadius = 2.0
        //        cell.contentView.layer.borderWidth = 1.0
        //        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        //        cell.contentView.layer.masksToBounds = true
        //
        //        cell.layer.shadowColor = UIColor.lightGray.cgColor
        //        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        //        cell.layer.shadowRadius = 2.0
        //        cell.layer.shadowOpacity = 0.2
        //        cell.layer.masksToBounds = false
        //        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        DetailTitle.text = topic
        //        DetailContent.text = content
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("called!")
                let vc: InfoViewController = (storyboard?.instantiateViewController(withIdentifier:"InfoViewController")as! InfoViewController)
                vc.category = topic
                vc.index = indexPath.row
                self.present(vc, animated: true, completion: nil)
    }
    
    //    func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController!, sourceViewController source: UIViewController) -> UIPresentationController? {
    //        return InfoViewController(presentedViewController: presented, presentingViewController: presentingViewController)
    //    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

//extension DetailSafetyViewController : UIViewControllerTransitioningDelegate {
//    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
//        return InfoViewController(presentedViewController: presented, presenting: presenting)
//    }
//}

