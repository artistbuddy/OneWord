//
//  WordsListCoordinator.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

class WordsListCoordinator {
    // MARK:- RootViewCoordinator
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController {
        return self._rootViewController
    }
    
    // MARK:- Properties
    private lazy var _rootViewController: DoubleHorizontalLayoutViewController = {
        let vc = DoubleHorizontalLayoutViewController(viewModel: self)
        vc.layout = self
        return vc
    }()
    
    private lazy var _topViewController: UIViewController = {
        return helloWorld()
    }()
    
    private lazy var _bottomViewController: UINavigationController = {
        let navigationController = UINavigationController()
        navigationController.isNavigationBarHidden = true
        return navigationController
    }()
    
    // MARK:-
    func start() {
        self._bottomViewController.viewControllers = [helloWorld()]
    }
    
    func helloWorld() -> HelloWorldViewController {
        let assembler = HelloWorldSceneAssembler()
        let vc: HelloWorldViewController = assembler.assemble()
        
        return vc
    }
}

// MARK:- DoubleHorizontalViewModelProtocol
extension WordsListCoordinator: DoubleHorizontalViewModelProtocol {
    var topViewController: UIViewController {
        return self._topViewController
    }
    var bottomViewController: UIViewController {
        return self._bottomViewController
    }
}

// MARK:- DoubleHorizontalLayoutProtocol
extension WordsListCoordinator: DoubleHorizontalLayoutProtocol {
    var topViewHeight: CGFloat {
        return 30
    }
}
