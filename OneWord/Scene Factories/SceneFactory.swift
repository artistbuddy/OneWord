//
//  SceneFactory.swift
//  OneWord
//
//  Created by Karol Bukowski on 15.12.2017.
//  Copyright © 2017 Karol Bukowski. All rights reserved.
//

import UIKit

class SceneFactory {
    // MARK:- Properties
    private let storyboard: UIStoryboard
    
    // MARK:- Initialization
    private init(_ name: String) {
        self.storyboard = SceneFactory.initializeStoryboard(name: name)
    }
    
    // MARK:- Helper methods
    private static func initializeStoryboard(name: String) -> UIStoryboard {
        return UIStoryboard(name: name, bundle: nil)
    }
    
    // MARK:- Factories
    static let helloWorld: HelloWorldFactory = SceneFactory("HelloWorld")
}

// MARK:- HelloWorldFactory
extension SceneFactory: HelloWorldFactory {
    func createHelloWorldViewController(viewModel: HelloWorldViewModelProtocol) -> HelloWorldViewController {
        guard let vc = storyboard.instantiateInitialViewController() as? HelloWorldViewController else {
            fatalError("Cannot " + #function)
        }
        
        vc.viewModel = viewModel
        
        return vc
    }
    
    
}
