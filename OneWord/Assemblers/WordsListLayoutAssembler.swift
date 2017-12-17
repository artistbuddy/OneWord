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

class WordsListLayoutAssembler {
    
}

// MARK:- WordsListLayoutAssemblerProtocol
extension WordsListLayoutAssembler: WordsListLayoutAssemblerProtocol {
    func assemble() -> WordsListContentCoordinator {
        let coordiantor = WordsListContentCoordinator()
        coordiantor.start()
        
        return coordiantor
    }
    
    func assemble() -> WordsListTopBarCoordinator {
        let coordinator = WordsListTopBarCoordinator()
        coordinator.start()
        
        return coordinator
    }
    
    func assemble() -> DoubleHorizontalViewModelProtocol {
        return WordsListLayoutViewModel(topBar: self.assemble(), content: self.assemble())
    }
    
    func assemble() -> DoubleHorizontalLayoutProtocol {
        return WordsListLayoutController()
    }
    
    func assemble() -> DoubleHorizontalLayoutViewController {
        let vc = DoubleHorizontalLayoutViewController(viewModel: self.assemble(), layout: self.assemble())
        
        return vc
    }
}
