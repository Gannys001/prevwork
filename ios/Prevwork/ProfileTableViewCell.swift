//
//  ProfileTableViewCell.swift
//  Prevwork
//
//  Created by 曹玥 on 2019/4/23.
//  Copyright © 2019 Angela He. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var value: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var arrow: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(row: ProfileRow) {
        self.title.text = row.title
        self.value.text = row.value
        button.titleLabel?.text = row.title
    }

}
