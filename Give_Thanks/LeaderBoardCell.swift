//
//  LeaderBoardCellTableViewCell.swift
//  Give_Thanks
//
//  Created by Sandeep Joshi on 2/11/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import UIKit

class LeaderBoardCell: UITableViewCell {

    @IBOutlet weak var userDonationLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userIconView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
