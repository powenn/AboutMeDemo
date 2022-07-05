//
//  Extensions.swift
//  AboutMe
//
//  Created by 蕭博文 on 2022/7/5.
//

import Foundation
import SwiftUI

// Mark: SwipeBack Support 
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
