//
//  WordsListTopBarCoordinator.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

protocol WordsListTopBarCoordinatorDelegate: class {
    func didShowWordsListTopBarScene()
    func didShowAddWordTopBarScene()
}

class WordsListTopBarCoordinator: RootViewCoordinator {
    // MARK:- RootViewCoordinator
    var childCoordinators: [Coordinator] = []
    var rootViewController: UIViewController {
        return self.navigationController
    }
    
    // MARK:- Properties
    weak var delegate: WordsListTopBarCoordinatorDelegate?
    
    private lazy var navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        navigationController.isNavigationBarHidden = true
        return navigationController
    }()
    
    // MARK:- Scenes
    func start() {
        showWordsListTopBarScene()
    }
    
    func showWordsListTopBarScene() {
        let vc: WordsListTopBarViewController = WordsListTopBarSceneAssembler(wordsListTopBarViewModelDelegate: self).assemble()
        
        self.navigationController.viewControllers = [vc]
    }
    
    func showAddWordTopBarScene() {
        let vc: AddWordTopBarViewController = AddWordTopBarSceneAssembler(addWordTopBarViewModelDelegate: self).assemble()
        
        self.navigationController.viewControllers = [vc]
    }
}

// MARK:- AddWordTopBarViewModelDelegate
extension WordsListTopBarCoordinator: AddWordTopBarViewModelDelegate {
    func addWordTopBarViewModelDidTapSave(_ viewModel: AddWordTopBarViewModel) {
        #if DEBUG
            print(String(describing: type(of: self)) + "." + #function)
        #endif
        
        showWordsListTopBarScene()
        self.delegate?.didShowWordsListTopBarScene()
    }
    
    func addWordTopBarViewModelDidTapCancel(_ viewModel: AddWordTopBarViewModel) {
        #if DEBUG
            print(String(describing: type(of: self)) + "." + #function)
        #endif
        
        showWordsListTopBarScene()
        self.delegate?.didShowWordsListTopBarScene()
    }
}

// MARK:- WordsListTopBarViewModelDelegate
extension WordsListTopBarCoordinator: WordsListTopBarViewModelDelegate {
    func wordsListTopBarViewModelDidTapAdd(_ viewModel: WordsListTopBarViewModel) {
        #if DEBUG
            print(String(describing: type(of: self)) + "." + #function)
        #endif
        
        showAddWordTopBarScene()
        self.delegate?.didShowAddWordTopBarScene()
    }
    
    // TODO: implement wordsListTopBarViewModelDidTapNotification(_:)
    func wordsListTopBarViewModelDidTapNotification(_ viewModel: WordsListTopBarViewModel) {
        #if DEBUG
            print(String(describing: type(of: self)) + "." + #function)
        #endif
    }
}

// MARK:- WordsListContentCoordinatorDelegate
extension WordsListTopBarCoordinator: WordsListContentCoordinatorDelegate {
    func didShowWordsListScene() {
        self.showWordsListTopBarScene()
    }
    
    func didShowAddWordScene() {
        self.showAddWordTopBarScene()
    }
}
