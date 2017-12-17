//
//  WordsListTopBarFactory.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol WordsListTopBarFactory {
    func createWordsListTopBarViewController(viewModel: WordsListTopBarViewModelProtocol) -> WordsListTopBarViewController
}
