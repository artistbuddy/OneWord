//
//  AddWordViewModel.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

class AddWordViewModel {
    // MARK:- Properties
    private let wordsList: WordsListDataSource
    
    // MARK:- Initialization
    init(wordsList: WordsListDataSource) {
        self.wordsList = wordsList
    }
}

// MARK:- AddWordViewModelProtocol
extension AddWordViewModel: AddWordViewModelProtocol {
    var textFieldPlaceholder: String {
        return "Type word here"
    }
}

// MARK:- AddWordViewControllerDelegate
extension AddWordViewModel: AddWordViewControllerDelegate {
    // TODO:- implement textFieldDidValueChange(value:)
    func textFieldDidValueChange(value: String) {
        
    }
    
    func textFieldDidEndEnditing(value: String) {
        self.wordsList.addWord(value)
    }
    
    
}
