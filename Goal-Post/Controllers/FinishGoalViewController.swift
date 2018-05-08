//
//  FinishGoalViewController.swift
//  Goal-Post
//
//  Created by Henry Chukwu on 5/8/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit

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
    }
}
