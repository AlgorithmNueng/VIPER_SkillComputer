//
//  SummarySKillComputerTableViewCell.swift
//  SkillComputer
//
//  Created by CodeMobiles on 7/31/2560 BE.
//  Copyright © 2560 codemobiles. All rights reserved.
//

import UIKit

class SummarySKillComputerCell: UITableViewCell, ReuseIdentifierProtocol {
    
    @IBOutlet weak var mSkillNameLB:UILabel!
    @IBOutlet weak var mSkillLevelLB:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func setContent(skillName:String, SkillLevel:String){
        self.mSkillNameLB.text = skillName
        self.mSkillLevelLB.text = SkillLevel
    }
}
