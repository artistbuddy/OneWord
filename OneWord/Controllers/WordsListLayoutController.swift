//
//  WordsListLayoutController.swift
//  OneWord
//
//  Created by Karol Bukowski on 17.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

class WordsListLayoutController {
    let topBarHeight: CGFloat = 30
}

// MARK: - DoubleHorizontalLayoutProtocol
extension WordsListLayoutController: DoubleHorizontalLayoutProtocol {
    var topViewHeight: CGFloat {
        return self.topBarHeight
    }
}
