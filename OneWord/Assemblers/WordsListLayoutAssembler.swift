//
//  WordsListLayoutAssembler.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol WordsListLayoutAssemblerProtocol {
    func assemble() -> DoubleHorizontalLayoutViewController
    func assemble() -> DoubleHorizontalLayoutProtocol
    func assemble() -> DoubleHorizontalViewModelProtocol
    func assemble() -> WordsListTopBarCoordinator
    func assemble() -> WordsListContentCoordinator
}

class WordsListLayoutAssembler: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    private lazy var topBarCoordinator: WordsListTopBarCoordinator = {
       return WordsListTopBarCoordinator()
    }()
    
    private lazy var contentCoordinator: WordsListContentCoordinator = {
        return WordsListContentCoordinator()
    }()
}

// MARK:- WordsListLayoutAssemblerProtocol
extension WordsListLayoutAssembler: WordsListLayoutAssemblerProtocol {
    func assemble() -> WordsListContentCoordinator {
        let coordiantor = self.contentCoordinator
        coordiantor.delegate = self.topBarCoordinator
        coordiantor.start()
        
        self.childCoordinators.append(coordiantor)
        
        return coordiantor
    }
    
    func assemble() -> WordsListTopBarCoordinator {
        let coordinator = self.topBarCoordinator
        coordinator.delegate = self.contentCoordinator
        coordinator.start()
        
        self.childCoordinators.append(coordinator)
        
        return coordinator
    }
    
    func assemble() -> DoubleHorizontalViewModelProtocol {
        return DoubleHorizontalViewModel(topView: self.assemble() as WordsListTopBarCoordinator, bottomView: self.assemble() as WordsListContentCoordinator)
    }
    
    func assemble() -> DoubleHorizontalLayoutProtocol {
        return WordsListLayoutController()
    }
    
    func assemble() -> DoubleHorizontalLayoutViewController {
        let vc = DoubleHorizontalLayoutViewController(viewModel: self.assemble(), layout: self.assemble())
        
        return vc
    }
}
