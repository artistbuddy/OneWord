//
//  WordsListTopBarCoordinator.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

class WordsListTopBarCoordinator: RootViewCoordinator {
    // MARK:- RootViewCoordinator
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController {
        return self.navigationController
    }
    
    // MARK:- Properties
    private lazy var navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        navigationController.isNavigationBarHidden = true
        return navigationController
    }()
    
    // MARK:-
    func start() {
        showWordsListTopBar()
    }
    
    func showWordsListTopBar() {
        let viewModel = WordsListTopBarViewModel()
        let vc = SceneFactory.wordsListTopBar.createWordsListTopBarViewController(viewModel: viewModel)
        
        self.navigationController.viewControllers = [vc]
    }
    
    func showAddWordTopBar() {
        let viewModel = AddWordTopBarViewModel()
        let vc = SceneFactory.addWordTopBar.createAddWordTopBarViewController(viewModel: viewModel)
        
        self.navigationController.viewControllers = [vc]
    }
}
