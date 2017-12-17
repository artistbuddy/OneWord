//
//  AddWordTopBarViewModel.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

class AddWordTopBarViewModel {
    init() {
        
    }
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
