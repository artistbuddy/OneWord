//
//  WordsListViewModel.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

protocol WordsListViewModelDelegate: class {
    func wordsListViewModel(_ viewModel: WordsListViewModel, didSelectRowAt: IndexPath)
}

class WordsListViewModel: NSObject {
    // MARK:- Properties
    weak var delegate: WordsListViewModelDelegate?
    
    private let wordsList: WordsListDataSource
    
    // MARK:- Initialization
    init(wordsList: WordsListDataSource) {
        self.wordsList = wordsList
    }
}

// MARK:- WordsListViewModelProtocol
extension WordsListViewModel: WordsListViewModelProtocol {
    var emptyListMessage: String {
        return "Click Add button to add new words"
    }
    
    var shouldHideWordsList: Bool {
        return self.wordsList.getAllWords().count == 0
    }
}

// MARK:- UITableViewDataSource
extension WordsListViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.wordsList.getAllWords().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "WordListCell")
        
        cell.textLabel?.text = self.wordsList.getWord(at: indexPath.row)
        
        return cell
    }
}

// MARK:- UITableViewDelegate
extension WordsListViewModel: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.wordsListViewModel(self, didSelectRowAt: indexPath)
    }
}
