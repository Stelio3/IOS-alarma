//
//  WorldClockTableViewCell.swift
//  TabBar
//
//  Created by Pablo Hernadez Jiménez on 5/11/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

class WorldClockTableViewCell: UITableViewCell {

    @IBOutlet weak var lblhourAlarm: UILabel!
    @IBOutlet weak var lbltimeAlarm: UILabel!
    @IBOutlet weak var lblzoneAlarm: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
