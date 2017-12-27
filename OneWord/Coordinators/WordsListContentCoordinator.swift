//
//  WordsListCoordinator.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

protocol WordsListContentCoordinatorDelegate: class {
    func didShowWordsListScene()
    func didShowAddWordScene()
}

class WordsListContentCoordinator: RootViewCoordinator {
    // MARK:- RootViewCoordinator
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController {
        return self.navigationController
    }
    
    // MARK:- Properties
    weak var delegate: WordsListContentCoordinatorDelegate?
    
    private lazy var navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        navigationController.isNavigationBarHidden = true
        return navigationController
    }()
    
    // MARK:- Scenes
    func start() {
        showWordsListScene()
    }
    
    func showWordsListScene() {
        let vc: WordsListViewController = WordsListSceneAssembler().assemble()
        
        self.navigationController.viewControllers = [vc]
    }
    
    func showAddWordScene() {
        let vc: AddWordViewController = AddWordSceneAssembler().assemble()
        self.navigationController.viewControllers = [vc]
    }
}

// MARK:- WordsListTopBarCoordinatorDelegate
extension WordsListContentCoordinator: WordsListTopBarCoordinatorDelegate {
    func didShowWordsListTopBarScene() {
        showWordsListScene()
    }
    
    func didShowAddWordTopBarScene() {
        showAddWordScene()
    }
}
