//
//  WordsListViewModel.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

struct FakeWordsDataSource {
    var words = ["hello", "bannana", "house", "job"]
}

class WordsListViewModel: NSObject {
    let list = FakeWordsDataSource()
}

// MARK:- WordsListViewModelProtocol
extension WordsListViewModel: WordsListViewModelProtocol {
    var emptyListMessage: String {
        return "Click Add button to add new words"
    }
    
    var shouldHideWordsList: Bool {
        return self.list.words.count == 0
    }
}

// MARK:- UITableViewDataSource
extension WordsListViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "WordListCell")
        
        cell.textLabel?.text = self.list.words[indexPath.row]
        
        return cell
    }
}

// MARK:- UITableViewDelegate
extension WordsListViewModel: UITableViewDelegate { }
