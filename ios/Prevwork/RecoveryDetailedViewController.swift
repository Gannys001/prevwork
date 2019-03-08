//
//  RecoveryDetailedViewController.swift
//  Prevwork
//
//  Created by Angela He on 3/6/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class RecoveryDetailedViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var detailedText: UITextView!
    @IBOutlet weak var URL: UILabel!
    
    // declared the desired value
    var desiredLabelValue: String!
    var infoArray:[String] = ["Acute low back pain – Most patients with acute low back pain (less than four weeks) improve regardless of specific management. We typically suggest nonpharmacologic therapy with superficial heat and continued activity. Bed rest is not advised. \n Subacute low back pain – For patients with subacute low back pain (lasting between 4 and 12 weeks), short-term interventions such as superficial heat, massage, exercise therapy (often with physical therapy), spinal manipulation, or acupuncture are reasonable. As with patients with acute back pain, we suggest patients with subacute low back pain remain active as well."]

    
//    var string[] = ["Acute low back pain – Most patients with acute low back pain (less than four weeks) improve regardless of specific management. We typically suggest nonpharmacologic therapy with superficial heat and continued activity. Bed rest is not advised."];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = desiredLabelValue
        
        // track the desired label
        if(desiredLabelValue == "Lower Back Pain"){
            detailedText.text = infoArray[0];
            
            let flowLayout = UICollectionViewFlowLayout()
            
            let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)
            collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.backgroundColor = UIColor.cyan
            
            // addSubViews
            self.view.addSubview(collectionView)
        }

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath as IndexPath)
        
        //cell.backgroundColor = UIColor.green
        
       
        let imageName = "walk.jpg"
        let image = UIImage(named: imageName)
    let imageview = UIImageView(image: image!)
        cell.contentView.addSubview(imageview)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 100, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
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
