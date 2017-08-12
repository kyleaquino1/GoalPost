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
    @IBOutlet weak var completionView: UIView!
    
    func configureCell(goal: Goal){
        self.goalDescriptionLabel.text = goal.goalDescription
        self.goalTypeLabel.text = goal.goalType
        self.goalProgressLabel.text = "\(goal.goalProgress)"
        
        if goal.goalProgress == goal.goalCompletionValue {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
    }
    
    
    

}
