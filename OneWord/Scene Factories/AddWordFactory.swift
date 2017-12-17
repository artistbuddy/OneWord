//
//  AddWordFactory.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol AddWordFactory {
    func createAddWordViewController(viewModel: AddWordViewModelProtocol) -> AddWordViewController
}
