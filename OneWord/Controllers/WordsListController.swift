//
//  WordsListController.swift
//  OneWord
//
//  Created by Karol Bukowski on 27.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol WordsListDataSource: class {
    func getAllWords() -> [String]
    func getWord(at index: Int) -> String
    func addWord(_ word: String)
    func deleteWord(at index: Int)
}

class WordsListController {
    // MARK:- Properties
    static let shared = WordsListController()
    
    private var words = ["hello", "bannana", "house", "job"]
}

// MARK:- WordsListDataSource
extension WordsListController: WordsListDataSource {
    func getWord(at index: Int) -> String {
        assert(index >= 0 && self.words.count > index)
        
        return self.words[index]
    }
    
    func getAllWords() -> [String] {
        return self.words
    }
    
    func addWord(_ word: String) {
        self.words.append(word)
    }
    
    func deleteWord(at index: Int) {
        assert(index >= 0 && self.words.count - 1 <= index)
        
        self.words.remove(at: index)
    }
}
