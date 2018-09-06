//
//  AlarmTableViewCell.swift
//  AlarmAssignment
//
//  Created by Porter Frazier on 9/5/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import UIKit

class AlarmTableViewCell: UITableViewCell{
    
    //Source Of Truth
    var alarm: Alarm?{
        didSet{
        }
    }
    
    weak var delegate: AlarmTableViewCellDelegate?
    
    
   
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var alarmSwitch: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    
    @IBAction func alarmSwitched(_ sender: UISwitch) {
        delegate?.alarmWasToggled(sender: self)
    }
    
}

