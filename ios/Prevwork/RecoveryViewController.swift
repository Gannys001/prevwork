//
//  RecoveryViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/1/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class RecoveryViewController: UIViewController {

    @IBOutlet weak var HorizontalScrollView: UICollectionView!
    
    @IBOutlet weak var VerticalScrollView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

extension RecoveryViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.HorizontalScrollView {
            return 11
        } else{
            return 4;
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.HorizontalScrollView {
            let cell = HorizontalScrollView.dequeueReusableCell(withReuseIdentifier: "ScrollInjury", for: indexPath) as! CollectionViewCell
            
            switch indexPath.row {
                case 0:
                    cell.button.setTitle("Lower Back Pain", for: .normal);
                    cell.image.image = UIImage(named: "lowerback");
                case 1:
                    cell.button.setTitle("Sprains", for: .normal);
                    cell.image.image = UIImage(named: "sprains");
                case 2:
                    cell.button.setTitle("Amputations", for: .normal);
                    cell.image.image = UIImage(named: "amputation");
                case 3:
                    cell.button.setTitle("Cuts, lacerations, punctures", for: .normal);
                    cell.image.image = UIImage(named: "cuts");
                case 4:
                    cell.button.setTitle("Bruises", for: .normal);
                    cell.image.image = UIImage(named: "bruises");
                case 5:
                    cell.button.setTitle("Chemical burns", for: .normal);
                    cell.image.image = UIImage(named: "chemical");
                case 6:
                    cell.button.setTitle("Heat burns", for: .normal);
                    cell.image.image = UIImage(named: "heartburn");
                case 7:
                    cell.button.setTitle("Soreness", for: .normal);
                    cell.image.image = UIImage(named: "soreness");
                case 8:
                    cell.button.setTitle("Carpal", for: .normal);
                    cell.image.image = UIImage(named: "carpal");
                case 9:
                    cell.button.setTitle("Tendonitis", for: .normal);
                    cell.image.image = UIImage(named: "tend");
                case 10:
                    cell.button.setTitle("Mutiple traumatic injuries", for: .normal);
                    cell.image.image = UIImage(named: "multipleinjury");
                default:
                    cell.button.setTitle("All Others", for: .normal);
                }
            
            return cell;
        } else{
                let cell = VerticalScrollView.dequeueReusableCell(withReuseIdentifier: "VerticalInjury", for: indexPath) as! IndustryCollectionViewCell
            
                switch indexPath.row {
                    case 0:
                        cell.button.setTitle("Lower Back Pain", for: .normal);
                        cell.image.image = UIImage(named: "lowerback");
                    case 1:
                        cell.button.setTitle("Sprains", for: .normal);
                        cell.image.image = UIImage(named: "sprains");
                    case 2:
                        cell.button.setTitle("Cuts, lacerations, punctures", for: .normal);
                        cell.image.image = UIImage(named: "cuts");
                    case 3:
                        cell.button.setTitle("Soreness", for: .normal);
                        cell.image.image = UIImage(named: "soreness");
                    default:
                        cell.button.setTitle("Transportation and material moving", for: .normal);
                }
                
                return cell;
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            let vc = segue.destination as! RecoveryDetailedViewController
            vc.desiredLabelValue = (sender as! UIButton).titleLabel?.text!
        
    }
    
}

