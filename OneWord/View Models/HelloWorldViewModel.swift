//
//  HelloWorldViewModel.swift
//  OneWord
//
//  Created by Karol Bukowski on 15.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import Foundation

class HelloWorldViewModel {
    // MARK:- Properties
    private let greetingController: GreetingController
    private var _message: String!
    
    
    // MARK:- Initialization
    init(greetingController: GreetingController) {
        self.greetingController = greetingController
        
        setupModel()
    }
    
    private func setupModel() {
        self._message = greetingController.getRandomGreeting()
    }
}

// MARK:- HelloWorldViewModelProtocol
extension HelloWorldViewModel: HelloWorldViewModelProtocol {
    var message: String {
        return self._message
    }
}
