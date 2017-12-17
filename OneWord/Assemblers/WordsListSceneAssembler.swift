//
//  WordsListSceneAssembler.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol WordsListSceneAssemblerProtocol {
    func assemble() -> WordsListViewController
    func assemble() -> WordsListViewModelProtocol
}

class WordsListSceneAssembler {
    private let viewModelDelegate: WordsListViewModelDelegate?
    
    init(wordsListViewModelDelegate: WordsListViewModelDelegate? = nil) {
        self.viewModelDelegate = wordsListViewModelDelegate
    }
}

// MARK:- WordsListSceneAssemblerProtocol
extension WordsListSceneAssembler: WordsListSceneAssemblerProtocol {
    func assemble() -> WordsListViewController {
        return SceneFactory.wordsList.createWordsListViewController(viewModel: self.assemble())
    }
    
    func assemble() -> WordsListViewModelProtocol {
        let viewModel = WordsListViewModel()
        viewModel.delegate = self.viewModelDelegate
        return viewModel
    }
}
