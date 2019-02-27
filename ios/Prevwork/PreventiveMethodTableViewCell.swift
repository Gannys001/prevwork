//
//  PreventiveMethodTableViewCell.swift
//  Prevwork
//
//  Created by Angela He on 2/27/19.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class PreventiveMethodTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageofPain: UIImageView!
    @IBOutlet weak var NameOfPain: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setPrevent(prevent:PreventClass){
        // set the text of the label
        NameOfPain.text = prevent.title;
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
