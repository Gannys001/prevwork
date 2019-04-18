//
//  SafetyViewController.swift
//  ios_employee
//
//  Created by Braelyn Chen on 3/22/19.
//  Copyright © 2019 Braelyn Chen. All rights reserved.
//

import UIKit

class SafetyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var horizontalCollection: UICollectionView!
    @IBOutlet weak var verticalCollection: UICollectionView!
    
    var itemTitle = String()
    
    var imageArray = [UIImage(named: "GeneralSafety"),UIImage(named: "EmployeeHealth"),UIImage(named: "SafetyOrientation"),UIImage(named: "SafetyMeeting")]
    
    var imageTitle = ["General Workplace Safety","Employee Health Tips","Safety Orientation Tips","Safety Meeting Tips"]
    
    var contentDetail = ["General Workplace Safety General Workplace Safety General Workplace Safety General Workplace Safety General Workplace Safety", "Employee Health Tips Employee Health Tips Employee Health Tips  Employee Health Tips Employee Health Tips", "Safety Orientation Tips Safety Orientation Tips Safety Orientation Tips Safety Orientation Tips Safety Orientation Tips", "Safety Meeting Tips Safety Meeting Tips Safety Meeting Tips Safety Meeting Tips Safety Meeting Tips"]
    
    
    var verImageArray = [UIImage(named: "aerospace"),UIImage(named: "agriculture"),UIImage(named: "automotive"),UIImage(named: "banking"),UIImage(named: "chemical"),UIImage(named: "computer"),UIImage(named: "commercial"),UIImage(named: "constructionindustry"),UIImage(named: "education"),UIImage(named: "electronic"),UIImage(named: "finance"),UIImage(named: "government"),UIImage(named: "healthindustry"),UIImage(named: "transportation")]
    var verTitle = ["Aerospace", "Agriculture", "Automotive", "Banking", "Chemical", "Computer Software", "Commerical","Construction", "Education", "Electronics", "Finance", "Government", "Health", "Transportation"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.horizontalCollection {
            return imageArray.count
        }
        else {
            return verTitle.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.horizontalCollection {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SafetyHorizontalCollectionViewCell", for: indexPath) as! SafetyHorizontalCollectionViewCell
            
            cell.SafetyHorizontalImage.image = imageArray[indexPath.row]
            
            cell.SafetyHorizontalLabel.text = imageTitle[indexPath.row]
            
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IndustryCollectionViewCell", for: indexPath) as! IndustryCollectionViewCell
            
            cell.industryImg.image = verImageArray[indexPath.row]
            
            cell.industryLabel.text = verTitle[indexPath.row]
            
            return cell
        }
    }
    
    //    @objc func handleHorizontalTap(sender: UITapGestureRecognizer) {
    //
    //        if let item = sender.view as? UILabel {
    //            itemTitle = item.text!
    //        }
    //        if let item = sender.view as? UIImageView {
    //            let img = item.image!
    //            switch img {
    //            case UIImage(named: "GeneralSafety"):
    //                itemTitle = imageTitle[0]
    //            case UIImage(named: "EmployeeHealth"):
    //                itemTitle = imageTitle[1]
    //            case UIImage(named: "SafetyOrientation"):
    //                itemTitle = imageTitle[2]
    //            case UIImage(named: "SafetyMeeting"):
    //                itemTitle = imageTitle[3]
    //            default:
    //                print("No image matches")
    //            }
    //        }
    //    }
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
                print("called!")
        if collectionView == self.horizontalCollection {
            let vc: DetailSafetyViewController = (storyboard?.instantiateViewController(withIdentifier:"DetailSafetyViewController")as! DetailSafetyViewController)
            vc.topic = imageTitle[indexPath.row]
            //        vc.content = contentDetail[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else {
            let vc: InfoViewController = (storyboard?.instantiateViewController(withIdentifier:"InfoViewController")as! InfoViewController)
            vc.category = verTitle[indexPath.row]
            vc.index = -1
            self.present(vc, animated: true, completion: nil)
        }
        
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        let destViewController: DetailSafetyViewController = segue.destination as! DetailSafetyViewController
    //        destViewController.DetailTitle.text = itemTitle
    //    }
    
}

