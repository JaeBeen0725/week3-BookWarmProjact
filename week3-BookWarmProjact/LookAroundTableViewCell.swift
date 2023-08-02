//
//  LookAroundTableViewCell.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/08/02.
//

import UIKit

class LookAroundTableViewCell: UITableViewCell {


    @IBOutlet var lookAroundTableImageView: UIImageView!
    @IBOutlet var lookAroundTableTitleLabel: UILabel!
    @IBOutlet var lookAroundTableDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
