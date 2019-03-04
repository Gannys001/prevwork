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
            return 10
        } else{
            return 20;
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.HorizontalScrollView {
            let cell = HorizontalScrollView.dequeueReusableCell(withReuseIdentifier: "ScrollInjury", for: indexPath) as! CollectionViewCell
            
            cell.button.setTitle("Injury", for: .normal);
            
            return cell;
        } else{
                let cell = VerticalScrollView.dequeueReusableCell(withReuseIdentifier: "VerticalInjury", for: indexPath) as! IndustryCollectionViewCell
                
                cell.button.setTitle("Industry", for: .normal);
                
                return cell;
        }
        
    }
    

}
