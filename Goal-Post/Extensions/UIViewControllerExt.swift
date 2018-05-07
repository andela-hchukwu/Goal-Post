//
//  UIViewControllerExt.swift
//  Goal-Post
//
//  Created by Henry Chukwu on 5/7/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit

extension UIViewController {

    func presentDetail(_ viewControllerToPreset: UIViewController) {

        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)

        present(viewControllerToPreset, animated: false, completion: nil)
    }

    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)

        dismiss(animated: false, completion: nil)

    }
}
