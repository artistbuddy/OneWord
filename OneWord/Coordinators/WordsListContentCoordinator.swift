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

