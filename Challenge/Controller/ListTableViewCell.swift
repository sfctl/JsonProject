//
//  ListTableViewCell.swift
//  Challenge
//
//  Created by Yasemin YEL on 23.02.2020.
//  Copyright © 2020 Sifa. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var cellAge: UILabel!
    @IBOutlet weak var cellGender: UILabel!
    @IBOutlet weak var cellEmail: UILabel!
    @IBOutlet weak var cellName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
