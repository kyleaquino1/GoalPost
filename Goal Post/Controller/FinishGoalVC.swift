//
//  FinishGoalVC.swift
//  Goal Post
//
//  Created by Kyle on 8/11/17.
//  Copyright © 2017 Kyle Aquino. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var createGoalButton: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    // Variables
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createGoalButton.bindToKeyBoard()
        pointsTextField.delegate = self
    }
    
    @IBAction func createGoalButtonPressed(_ sender: Any) {
        if pointsTextField.text != nil {
            self.save { (completed) in
                if completed {
                    dismiss(animated: true, completion: nil)
                } else {
                    
                }
            }
        }
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
    
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = self.goalDescription
        goal.goalType = self.goalType.rawValue
        goal.goalCompletionValue = Int32(self.pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("Works")
            completion(true)
        } catch {
            debugPrint("Could Not Save: \(error.localizedDescription)")
            completion(false)
        }
    }
}

























