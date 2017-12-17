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
    
}

// MARK:- WordsListTopBarSceneAssemblerProtocol
extension WordsListTopBarSceneAssembler: WordsListTopBarSceneAssemblerProtocol {
    func assemble() -> WordsListTopBarViewController {
        return SceneFactory.wordsListTopBar.createWordsListTopBarViewController(viewModel: self.assemble())
    }
    
    func assemble() -> WordsListTopBarViewModel {
        return WordsListTopBarViewModel()
    }    
}
