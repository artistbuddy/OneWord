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
    func assemble() -> AddWordViewModelProtocol
}

class AddWordSceneAssembler {
    
}

// MARK:- AddWordSceneAssemblerProtocol
extension AddWordSceneAssembler: AddWordSceneAssemblerProtocol {
    func assemble() -> AddWordViewModelProtocol {
        return AddWordViewModel()
    }
    
    func assemble() -> AddWordViewController {
        return SceneFactory.addWord.createAddWordViewController(viewModel: self.assemble())
    }
}
