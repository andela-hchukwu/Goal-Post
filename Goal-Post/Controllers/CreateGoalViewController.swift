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


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func longTermBtnWasPressed(_ sender: Any) {
    }

    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
    }

    @IBAction func nextBtnWasPressed(_ sender: Any) {
    }

    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
