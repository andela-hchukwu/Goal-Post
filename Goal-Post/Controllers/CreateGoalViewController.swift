//
//  CreateGoalViewController.swift
//  Goal-Post
//
//  Created by Henry Chukwu on 5/4/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit

class CreateGoalViewController: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!

    var goalType: GoalType = .shortTerm


    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTermBtn.setDeselectedColor()
    }

    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }

    @IBAction func nextBtnWasPressed(_ sender: Any) {
    }

    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
}
