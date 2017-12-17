//
//  AddWordTopBarSceneAssembler.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol AddWordTopBarSceneAssemblerProtocol {
    func assemble() -> AddWordTopBarViewController
    func assemble() -> AddWordTopBarViewModel
}

class AddWordTopBarSceneAssembler {
    
}

// MARK:- AddWordTopBarSceneAssemblerProtocol
extension AddWordTopBarSceneAssembler: AddWordTopBarSceneAssemblerProtocol {
    func assemble() -> AddWordTopBarViewController {
        return SceneFactory.addWordTopBar.createAddWordTopBarViewController(viewModel: self.assemble())
    }
    
    func assemble() -> AddWordTopBarViewModel {
        return AddWordTopBarViewModel()
    }
}
