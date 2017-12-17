//
//  WordsListTopBarViewModal.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

class WordsListTopBarViewModel {
    init() {
        
    }
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
