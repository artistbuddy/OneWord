//
//  WordsListTopBarViewModal.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol WordsListTopBarViewModelDelegate: class {
    func wordsListTopBarViewModelDidTapAdd(_ viewModel: WordsListTopBarViewModel)
    func wordsListTopBarViewModelDidTapNotification(_ viewModel: WordsListTopBarViewModel)
}

class WordsListTopBarViewModel {
    // MARK:- Properties
    weak var delegate: WordsListTopBarViewModelDelegate?
}

// MARK:- WordsListViewModelProtocol
extension WordsListTopBarViewModel: WordsListTopBarViewModelProtocol {
    var title: String {
        return "Words List"
    }
    
    var addButtonText: String {
        return "Add"
    }
    
    var notificationsButtonText: String {
        return "Notifications"
    }
}

// MARK:- WordsListTopBarViewControllerDelegate
extension WordsListTopBarViewModel: WordsListTopBarViewControllerDelegate {
    func didTapAddButton() {
        self.delegate?.wordsListTopBarViewModelDidTapAdd(self)
    }
    
    func didTapNotificationButton() {
        self.delegate?.wordsListTopBarViewModelDidTapNotification(self)
    }
}

