//
//  CustomTableViewCell.swift
//  Sell'n Yum
//
//  Created by Jonathan Durieu on 12/02/16.
//  Copyright © 2016 Jonathan Durieu. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var CategorLabel: UILabel!
    @IBOutlet weak var NumberOfMealsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
