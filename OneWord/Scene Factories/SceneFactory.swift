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
    static let wordsListTopBar: WordsListTopBarFactory = SceneFactory("WordsListTopBar")
    static let addWordTopBar: AddWordTopBarFactory = SceneFactory("AddWordTopBar")
    static let wordsList: WordsListFactory = SceneFactory("WordsList")
    static let addWord: AddWordFactory = SceneFactory("AddWord")
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

// MARK:- WordsListTopBarFactory
extension SceneFactory: WordsListTopBarFactory {
    func createWordsListTopBarViewController(viewModel: WordsListTopBarViewModelProtocol) -> WordsListTopBarViewController {
        guard let vc = storyboard.instantiateInitialViewController() as? WordsListTopBarViewController else {
            fatalError("Cannot " + #function)
        }
        
        vc.viewModel = viewModel
        
        return vc
    }
}

// MARK:- AddWordTopBarFactory
extension SceneFactory: AddWordTopBarFactory {
    func createAddWordTopBarViewController(viewModel: AddWordTopBarViewModelProtocol) -> AddWordTopBarViewController {
        guard let vc = storyboard.instantiateInitialViewController() as? AddWordTopBarViewController else {
            fatalError("Cannot " + #function)
        }
        
        vc.viewModel = viewModel
        
        return vc
    }
}

// MARK:- WordsListFactory
extension SceneFactory: WordsListFactory {
    func createWordsListViewController(viewModel: WordsListViewModelProtocol) -> WordsListViewController {
        guard let vc = storyboard.instantiateInitialViewController() as? WordsListViewController else {
            fatalError("Cannot " + #function)
        }
        
        vc.viewModel = viewModel
        
        return vc
    }
}

extension SceneFactory: AddWordFactory {
    func createAddWordViewController(viewModel: AddWordViewModelProtocol) -> AddWordViewController {
        guard let vc = storyboard.instantiateInitialViewController() as? AddWordViewController else {
            fatalError("Cannot " + #function)
        }
        
        vc.viewModel = viewModel
        
        return vc
    }
    
    
}
