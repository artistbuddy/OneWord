//
//  WordsListLayoutViewModel.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

class WordsListLayoutViewModel {
    private let topBarCoordinator: WordsListTopBarCoordinator
    private let contentCoordinator: WordsListContentCoordinator
    
    init(topBar: WordsListTopBarCoordinator, content: WordsListContentCoordinator) {
        self.topBarCoordinator = topBar
        self.contentCoordinator = content
    }
}

// MARK:- DoubleHorizontalViewModelProtocol
extension WordsListLayoutViewModel: DoubleHorizontalViewModelProtocol {
    var topViewController: UIViewController {
        return self.topBarCoordinator.rootViewController
    }
    
    var bottomViewController: UIViewController {
        return contentCoordinator.rootViewController
    }
    
    
}
