//
//  WordsListTopBarSceneAssembler.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol WordsListTopBarSceneAssemblerProtocol {
    func assemble() -> WordsListTopBarViewController
    func assemble() -> WordsListTopBarViewModel
}

class WordsListTopBarSceneAssembler {
    private let viewModelDelegate: WordsListTopBarViewModelDelegate?
    
    init(wordsListTopBarViewModelDelegate: WordsListTopBarViewModelDelegate? = nil) {
        self.viewModelDelegate = wordsListTopBarViewModelDelegate
    }
}

// MARK:- WordsListTopBarSceneAssemblerProtocol
extension WordsListTopBarSceneAssembler: WordsListTopBarSceneAssemblerProtocol {
    func assemble() -> WordsListTopBarViewController {
        let viewModel: WordsListTopBarViewModel = self.assemble()
        
        let vc = SceneFactory.wordsListTopBar.createWordsListTopBarViewController(viewModel: viewModel)
        vc.delegate = viewModel
        
        return vc
    }
    
    func assemble() -> WordsListTopBarViewModel {
        let viewModel = WordsListTopBarViewModel()
        viewModel.delegate = self.viewModelDelegate
        return viewModel
    }    
}
