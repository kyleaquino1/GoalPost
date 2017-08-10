//
//  GoalCell.swift
//  Goal Post
//
//  Created by Kyle on 8/10/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit
import CoreData

class GoalCell: UITableViewCell {

    // Outlets
    
    @IBOutlet weak var goalDescriptionLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    
    func configureCell(description: String, type: GoalType, goalProgressAmount: Int){
        self.goalDescriptionLabel.text = description
        self.goalTypeLabel.text = type.rawValue
        self.goalProgressLabel.text = "\(goalProgressAmount)"
    }
    
    
    

}
