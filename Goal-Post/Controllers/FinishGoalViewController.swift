//
//  FinishGoalViewController.swift
//  Goal-Post
//
//  Created by Henry Chukwu on 5/8/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!

    var goalDescription: String!
    var goalType: GoalType!

    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self

    }

    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type

    }

    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        if pointsTextField.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }

    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }

    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext
            else { return }
        let goal = Goal(context: managedContext)

        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)

        do {
            try managedContext.save()
            print("successfully save data")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }

}
