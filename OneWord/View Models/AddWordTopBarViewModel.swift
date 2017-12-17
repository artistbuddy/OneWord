//
//  AddWordTopBarViewModel.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

protocol AddWordTopBarViewModelDelegate: class {
    func addWordTopBarViewModelDidTapSave(_ viewModel: AddWordTopBarViewModel)
    func addWordTopBarViewModelDidTapCancel(_ viewModel: AddWordTopBarViewModel)
}

class AddWordTopBarViewModel {
    // MARK:- Properties
    weak var delegate: AddWordTopBarViewModelDelegate?
}

// MARK:- AddWordTopBarViewModelProtocol
extension AddWordTopBarViewModel: AddWordTopBarViewModelProtocol {
    var title: String {
        return "Add word"
    }
    
    var saveButtonText: String {
        return "Save"
    }
    
    var cancelButtonText: String {
        return "Cancel"
    }
}

// MARK:- AddWordTopBarViewControllerDelegate
extension AddWordTopBarViewModel: AddWordTopBarViewControllerDelegate {
    func didTapSaveButton() {
        self.delegate?.addWordTopBarViewModelDidTapSave(self)
    }
    
    func didTapCancelButton() {
        self.delegate?.addWordTopBarViewModelDidTapCancel(self)
    }
}
