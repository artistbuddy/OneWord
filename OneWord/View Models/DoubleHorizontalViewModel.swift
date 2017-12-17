//
//  DoubleHorizontalViewModel.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

class DoubleHorizontalViewModel {
    private let _topViewController: RootViewControllerProvider
    private let _bottomViewController: RootViewControllerProvider
    
    init(topView: RootViewControllerProvider, bottomView: RootViewControllerProvider) {
        self._topViewController = topView
        self._bottomViewController = bottomView
    }
}

// MARK:- DoubleHorizontalViewModelProtocol
extension DoubleHorizontalViewModel: DoubleHorizontalViewModelProtocol {
    var topViewController: UIViewController {
        return self._topViewController.rootViewController
    }
    
    var bottomViewController: UIViewController {
        return self._bottomViewController.rootViewController
    }
}
