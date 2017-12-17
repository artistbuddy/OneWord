//
//  UIViewControllerExtensions.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

// MARK:- Child View Controllers
extension UIViewController {
    func addChildViewController(_ controller: UIViewController, to view: UIView) {
        controller.view.frame = view.bounds
        self.addChildViewController(controller)
        view.addSubview(controller.view)
        controller.didMove(toParentViewController: self)
    }
    
    func removeChildViewController(_ controller: UIViewController) {
        controller.willMove(toParentViewController: nil)
        controller.view.removeFromSuperview()
        controller.removeFromParentViewController()
    }
}
