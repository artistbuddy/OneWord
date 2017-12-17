//
//  WordsListCoordinator.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

class WordsListContentCoordinator: RootViewCoordinator {
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
        showWordsList()
    }
    
    func showWordsList() {
        let viewModel = WordsListViewModel()
        let vc = SceneFactory.wordsList.createWordsListViewController(viewModel: viewModel)
        
        self.navigationController.viewControllers = [vc]
    }
}

