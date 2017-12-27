//
//  AddWordSceneAssembler.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol AddWordSceneAssemblerProtocol {
    func assemble() -> AddWordViewController
    func assemble() -> AddWordViewModel
    func assemble() -> WordsListDataSource
}

class AddWordSceneAssembler {
    
}

// MARK:- AddWordSceneAssemblerProtocol
extension AddWordSceneAssembler: AddWordSceneAssemblerProtocol {
    func assemble() -> WordsListDataSource {
        return WordsListController.shared
    }
    
    func assemble() -> AddWordViewModel {
        return AddWordViewModel(wordsList: self.assemble())
    }
    
    func assemble() -> AddWordViewController {
        let viewModel: AddWordViewModel = self.assemble()
        
        let vc = SceneFactory.addWord.createAddWordViewController(viewModel: viewModel)
        vc.delegate = viewModel
        
        return vc
    }
}
