//
//  customTableViewCell.swift
//  Json Parsing
//
//  Created by Swapnil Kadam on 22/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbl_countryname: UILabel!
    
    @IBOutlet weak var lbl_countrycapital: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
