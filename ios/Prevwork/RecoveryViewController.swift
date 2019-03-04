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
            return 11;
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.HorizontalScrollView {
            let cell = HorizontalScrollView.dequeueReusableCell(withReuseIdentifier: "ScrollInjury", for: indexPath) as! CollectionViewCell
            
            switch indexPath.row {
                case 0:
                    cell.button.setTitle("Fractures", for: .normal);
                case 1:
                    cell.button.setTitle("Sprains", for: .normal);
                case 2:
                    cell.button.setTitle("Amputations", for: .normal);
                case 3:
                    cell.button.setTitle("Cuts, lacerations, punctures", for: .normal);
                case 4:
                    cell.button.setTitle("Bruises", for: .normal);
                case 5:
                    cell.button.setTitle("Chemical burns", for: .normal);
                case 6:
                    cell.button.setTitle("Heat burns", for: .normal);
                case 7:
                    cell.button.setTitle("Mutiple traumatic injuries", for: .normal);
                case 8:
                    cell.button.setTitle("Soreness", for: .normal);
                case 9:
                    cell.button.setTitle("Carpal", for: .normal);
                case 10:
                    cell.button.setTitle("Tendonitis", for: .normal);
                default:
                    cell.button.setTitle("All Others", for: .normal);
                }
            
            return cell;
        } else{
                let cell = VerticalScrollView.dequeueReusableCell(withReuseIdentifier: "VerticalInjury", for: indexPath) as! IndustryCollectionViewCell
            
                switch indexPath.row {
                    case 0:
                        cell.button.setTitle("Management, business, financial", for: .normal);
                    case 1:
                        cell.button.setTitle("Computer, engineering, and science", for: .normal);
                    case 2:
                        cell.button.setTitle("Education, legal, community service, arts, and media", for: .normal);
                    case 3:
                        cell.button.setTitle("Healthcare practitioners and technical", for: .normal);
                    case 4:
                        cell.button.setTitle("Service", for: .normal);
                    case 5:
                        cell.button.setTitle("Sales and related", for: .normal);
                    case 6:
                        cell.button.setTitle("Office and administrative support", for: .normal);
                    case 7:
                        cell.button.setTitle("Farming, fishing, and forestry", for: .normal);
                    case 8:
                        cell.button.setTitle("Construction and extraction", for: .normal);
                    case 9:
                        cell.button.setTitle("Installation, maintenance, and repair", for: .normal);
                    case 10:
                        cell.button.setTitle("Production", for: .normal);
                    default:
                        cell.button.setTitle("Transportation and material moving", for: .normal);
                }
                
                return cell;
        }
        
    }
    
}

